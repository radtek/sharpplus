/**
 * libavfilter/vf_logo.c
 * filter to overlay (with or without alpha) logo on top of video
 * Copyright (c) 2009 Juergen Meissner (using parts of previous code)
 * Copyright (c) 2008 Victor Paesa     (libavfilter/vsrc_movie.c)
 * Copyright (c) 2007 Bobby Bingham    (libavfilter/vf_overlay.c)
 * Copyright (c) 2007 Juergen Meissner (vhook/overlay.c)
 *
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */


/**
 *
 * example of using libavfilter/vf_logo:
 *
 * ffmpeg -i inputvideofile -vfilters logo=10:20:logofile.png -y outputvideofile
 *
 * image of logofile.png is overlayed onto every frame of inputvideofile 
 * at offset x=10 y=20 giving outputvideofile
 *
 * x <INT>
 *
 *   Defines a logo (left border) offset from the left side of the video.
 *   A negative value offsets (logo right border) from
 *   the right side of the video.
 *
 * y <INT>
 *
 *   Defines a logo (top border) offset from the top of the video.
 *   A negative value offsets (logo bottom border) from
 *   the bottom of the video.
 *
 * if logofile has no alpha-path You can prefix another 3 fields R,G,B
 * to select a RGB-color to be the transparent one
 *
 *
 * ffmpeg -i inputvideofile -vfilters logo=0:0:0:10:20:logofile.png -y outputvideofile
 *
 *   black is the color to be understood as transparent
 *
 *
 * ffmpeg -i inputvideofile -vfilters logo_without_alpha=10:20:logofile.png -y outputvideofile
 *
 *   force overlaying all pixels (even if no alpha-path)
 *
 *
 *   REMARKS: there is a lot of gymnastics with the single logo frame, we do 
 *   this to avoid any transformation for ALL the many 
 *   video frames
 *
 */

/* TODO:
 *
 *
 */

#include <stdio.h>
#include "libavcodec/avcodec.h"
#include "libswscale/swscale.h"
#include "libavutil/pixdesc.h"
#include "libavformat/avformat.h"
#include "avfilter.h"


typedef struct {

    // pointer back to AVFilterContext
    AVFilterContext *filter_ctx;

    // video parameters
    int hsub, vsub;             //< chroma subsampling
    int bpp[4];                 //< bytes per pixel within plane
    int video_w, video_h, video_format;

    // logo parameters
    int x, y;                   //< requested offsets of logo on video
    int w, h, format;           //< width, height, pix-format
    int app_x, app_y, app_w, app_h;     // corrected to be applied
    char file_name[512];
    int alpha_R, alpha_G, alpha_B;

    // Needed to load logo
    AVFormatContext *pFormatCtx;
    int videoStream;
    AVCodecContext *pCodecCtx;
    AVCodec *pCodec;
    AVFrame *plogo_frame;
    AVFrame *plogo_frame_rgba32;
    AVFrame *plogo_frame_video_format;
    uint8_t *buffer_logo_frame;
    uint8_t *buffer_logo_frame_rgba32;
    uint8_t *buffer_logo_frame_video_format;
    AVPacket packet;
    struct SwsContext *sws;

    // Needed to overlay logo onto video frame
    uint8_t *pRuler_0;
    uint8_t *pRuler_1_2;

} LogoContext;

/**
 * RGBA pixel.
 */
typedef struct {
    uint8_t R;                  ///< Red.
    uint8_t G;                  ///< Green.
    uint8_t B;                  ///< Blue.
    uint8_t A;                  ///< Alpha.
} RGBA;

static const char *pixdesc_name(int pix_fmt)
{
    return av_pix_fmt_descriptors[pix_fmt].name;
}

static int load_logo_create_frames(AVFilterContext * ctx)
{
    LogoContext *logo;
    int i, j, err, numBytes, frameFinished;
    uint8_t *pLOADfrom_sol;
    RGBA *pLOADfrom;

    logo = ctx->priv;

    /*
     * The last three parameters specify the file format, buffer size and format
     * parameters; by simply specifying NULL or 0 we ask libavformat to
     * auto-detect the format and use a default buffer size.
     */
     
    if ((err =
         av_open_input_file(&logo->pFormatCtx, logo->file_name, NULL, 0,
                            NULL)) != 0) {
        av_log(ctx, AV_LOG_ERROR,
               " cannot open logo file %s error is %d\n", logo->file_name,
               err);
        return -1;
    }

    /*
     * This fills the streams field of the AVFormatContext with valid information.
     */
     
    if (av_find_stream_info(logo->pFormatCtx) < 0) {
        av_log(ctx, AV_LOG_ERROR,
               " failed to find stream info in logo file\n");
        return -1;
    }

    /*
     * we simply use the first video stream
     */
    logo->videoStream = -1;
    for (i = 0; i < logo->pFormatCtx->nb_streams; i++)
        if (logo->pFormatCtx->streams[i]->codec->codec_type ==
            CODEC_TYPE_VIDEO) {
            logo->videoStream = i;
            break;
        }
    if (logo->videoStream == -1) {
        av_log(ctx, AV_LOG_ERROR,
               " failed to find any video stream in logo file\n");
        return -1;
    }
    // Get a pointer to the codec context for the video stream
    logo->pCodecCtx = logo->pFormatCtx->streams[logo->videoStream]->codec;

    /*
     * OK, so now we've got a pointer to the so-called codec context for our video
     * stream, but we still have to find the actual codec and open it.
     */
    // find the decoder for the video stream
    logo->pCodec = avcodec_find_decoder(logo->pCodecCtx->codec_id);
    if (logo->pCodec == NULL) {
        av_log(ctx, AV_LOG_ERROR,
               " failed to find any codec for decoding logo frame\n");
        return -1;
    }
    // Inform the codec that we can handle truncated bitstreams -- i.e.,
    // bitstreams where frame boundaries can fall in the middle of packets
    if (logo->pCodec->capabilities & CODEC_CAP_TRUNCATED)
        logo->pCodecCtx->flags |= CODEC_FLAG_TRUNCATED;

    // Open codec
    av_log(ctx, AV_LOG_DEBUG, " avcodec_open\n");
    if (avcodec_open(logo->pCodecCtx, logo->pCodec) < 0) {
        av_log(ctx, AV_LOG_ERROR, " failed to open codec\n");
        return -1;
    }

    /*
     * the plogo_frame (of type AVFrame *) is allocated like this:
     */
    // Allocate an AVFrame structure
    logo->plogo_frame = avcodec_alloc_frame();
    if (logo->plogo_frame == NULL) {
        av_log(ctx, AV_LOG_ERROR, " failed to alloc plogo_frame\n");
        return -1;
    }
    // Determine required buffer size and allocate buffer
    numBytes =
        avpicture_get_size(logo->pCodecCtx->pix_fmt,
                           logo->pCodecCtx->width,
                           logo->pCodecCtx->height);
    logo->buffer_logo_frame = av_malloc(numBytes);

    // Assign appropriate parts of buffer to image planes in plogo_frame
    avpicture_fill((AVPicture *) logo->plogo_frame,
                   logo->buffer_logo_frame, logo->pCodecCtx->pix_fmt,
                   logo->pCodecCtx->width, logo->pCodecCtx->height);

    logo->w = logo->pCodecCtx->width;
    logo->h = logo->pCodecCtx->height;

    av_log(ctx, AV_LOG_DEBUG, " linesizes [0]=%d [1]=%d [2]=%d [3]=%d\n",
           ((AVPicture *) logo->plogo_frame)->linesize[0],
           ((AVPicture *) logo->plogo_frame)->linesize[1],
           ((AVPicture *) logo->plogo_frame)->linesize[2],
           ((AVPicture *) logo->plogo_frame)->linesize[3]);

    av_log(ctx, AV_LOG_DEBUG, " av_read_frame\n");
    while (av_read_frame(logo->pFormatCtx, &logo->packet) >= 0) 
	{
        av_log(ctx, AV_LOG_DEBUG, " got a frame\n");
        // Is this a packet from the video stream?
        if (logo->packet.stream_index == logo->videoStream) {
            // Decode video frame
            av_log(ctx, AV_LOG_DEBUG, " avcodec_decode_video\n");
            avcodec_decode_video2(logo->pCodecCtx, logo->plogo_frame,
                                  &frameFinished, &logo->packet);

            // Did we get a video frame?
            if (frameFinished) {
                av_log(ctx, AV_LOG_DEBUG,
                       " got a finished frame, fine!!\n");
            }
        }
        av_log(ctx, AV_LOG_DEBUG,
               " avcodec decoded logo image to pix_fmt=%s (%d)\n",
               pixdesc_name(logo->pCodecCtx->pix_fmt),
               logo->pCodecCtx->pix_fmt);
        logo->format = logo->pCodecCtx->pix_fmt;
        av_log(ctx, AV_LOG_DEBUG, " logo  size is %dx%d\tpixfmt:%s\n",
               logo->w, logo->h, pixdesc_name(logo->format));

        // Free the packet that was allocated by av_read_frame
        av_free_packet(&logo->packet);
    }

    if (logo->pCodecCtx->pix_fmt != PIX_FMT_RGBA) {
        // transform it with swscaler to PIX_FMT_RGBA 
        av_log(ctx, AV_LOG_DEBUG,
               " transform logo image from pix_fmt=%s to RGBA\n",
               pixdesc_name(logo->pCodecCtx->pix_fmt));
        if (logo->pCodecCtx->pix_fmt == PIX_FMT_RGB24) {
            av_log(ctx, AV_LOG_DEBUG,
                   " image of pix_fmt=%s has no alpha path!\n",
                   pixdesc_name(logo->pCodecCtx->pix_fmt));
        }
        // Allocate an AVFrame structure
        logo->plogo_frame_rgba32 = avcodec_alloc_frame();
        if (logo->plogo_frame_rgba32 == NULL) {
            av_log(ctx, AV_LOG_ERROR,
                   " failed to alloc plogo_frame_rgba32\n");
            return -1;
        }
        logo->sws =
            sws_getCachedContext(logo->sws, logo->w, logo->h,
                                 logo->pCodecCtx->pix_fmt, logo->w,
                                 logo->h, PIX_FMT_RGBA, SWS_BICUBIC, NULL,
                                 NULL, NULL);
        if (logo->sws == NULL) {
            av_log(ctx, AV_LOG_ERROR,
                   " cannot initialize the to-RGBA conversion context\n");
            return -1;
        }
        // Determine required buffer size and allocate buffer
        numBytes = avpicture_get_size(PIX_FMT_RGBA, logo->w, logo->h);
        logo->buffer_logo_frame_rgba32 = av_malloc(numBytes);
        // Assign appropriate parts of buffer to image planes in plogo_frame
        avpicture_fill((AVPicture *) logo->plogo_frame_rgba32,
                       logo->buffer_logo_frame_rgba32, PIX_FMT_RGBA,
                       logo->w, logo->h);

        // transform to RGBA pixel format
        sws_scale(logo->sws, logo->plogo_frame->data,
                  logo->plogo_frame->linesize, 0, logo->h,
                  logo->plogo_frame_rgba32->data,
                  logo->plogo_frame_rgba32->linesize);
        av_log(ctx, AV_LOG_DEBUG,
               " RGBA linesizes [0]=%d [1]=%d [2]=%d [3]=%d\n",
               ((AVPicture *) logo->plogo_frame_rgba32)->linesize[0],
               ((AVPicture *) logo->plogo_frame_rgba32)->linesize[1],
               ((AVPicture *) logo->plogo_frame_rgba32)->linesize[2],
               ((AVPicture *) logo->plogo_frame_rgba32)->linesize[3]);

    } else {
        logo->plogo_frame_rgba32 = logo->plogo_frame;
        logo->buffer_logo_frame_rgba32 = logo->buffer_logo_frame;
    }


    if (av_log_get_level() >= AV_LOG_DEBUG) {
        pLOADfrom_sol = logo->plogo_frame_rgba32->data[0];
        pLOADfrom = (RGBA *) pLOADfrom_sol;
        for (i = 0; i < logo->h; i++) {
            for (j = 0; j < logo->w; j++) {
                av_log(ctx, AV_LOG_DEBUG,
                       " image (%3d,%3d) R=%3d G=%3d B=%3d A=%3d\n", i, j,
                       pLOADfrom->R, pLOADfrom->G, pLOADfrom->B,
                       pLOADfrom->A);
                pLOADfrom++;
            }
            pLOADfrom_sol += logo->plogo_frame_rgba32->linesize[0];
            pLOADfrom = (RGBA *) pLOADfrom_sol;
        };
    };

    /* eventually touch alpha if requested by name logo_without_alpha */
    if (logo->alpha_R > -1) {
        pLOADfrom_sol = logo->plogo_frame_rgba32->data[0];
        pLOADfrom = (RGBA *) pLOADfrom_sol;
        for (i = 0; i < logo->h; i++) {
            for (j = 0; j < logo->w; j++) {
                pLOADfrom->A = 255;     // non transparent
                if (logo->alpha_R == pLOADfrom->R &&
                    logo->alpha_G == pLOADfrom->G &&
                    logo->alpha_B == pLOADfrom->B)
                    pLOADfrom->A = 0;   // transparent
                av_log(ctx, AV_LOG_DEBUG,
                       " touched image (%3d,%3d) R=%3d G=%3d B=%3d A=%3d\n",
                       i, j, pLOADfrom->R, pLOADfrom->G, pLOADfrom->B,
                       pLOADfrom->A);
                pLOADfrom++;
            }
            pLOADfrom_sol += logo->plogo_frame_rgba32->linesize[0];
            pLOADfrom = (RGBA *) pLOADfrom_sol;
        };
    };

    return 0;
}

static av_cold int init(AVFilterContext * ctx, const char *args,
                        void *opaque)
{
    LogoContext *logo;
    int num_fields;
    int arg_R, arg_G, arg_B;

    logo = ctx->priv;

    logo->filter_ctx = ctx;     // remember ptr to AVFilterContext in LogoContext

    logo->alpha_R = -1;         // you can pick a color to be the transparent one
    logo->alpha_G = -1;
    logo->alpha_B = -1;

    if (!args || strlen(args) > 1024) {
        av_log(ctx, AV_LOG_ERROR, " Invalid arguments!\n");
        return -1;
    }

    num_fields = sscanf(args, "%d|%d|%d|%d|%d|%512[^|]",
                        &arg_R, &arg_G, &arg_B,
                        &logo->x, &logo->y, logo->file_name);
    if (num_fields == 6) {
        logo->alpha_R = arg_R;
        logo->alpha_G = arg_G;
        logo->alpha_B = arg_B;
        av_log(ctx, AV_LOG_INFO,
               " RGB=(%d,%d,%d) x=%d y=%d file=%s\n",
               logo->alpha_R, logo->alpha_G, logo->alpha_B,
               logo->x, logo->y, logo->file_name);
        if (logo->alpha_R < 0 || logo->alpha_R > 255 ||
            logo->alpha_G < 0 || logo->alpha_G > 255 ||
            logo->alpha_B < 0 || logo->alpha_B > 255) {
            av_log(ctx, AV_LOG_ERROR,
                   " Invalid RGB values! (must be 0-255)\n");
            return -1;
        }
    } else {
        num_fields = sscanf(args, "%d|%d|%512[^|]",
                            &logo->x, &logo->y, logo->file_name);
        if (num_fields == 3) {
            av_log(ctx, AV_LOG_INFO,
                   " x=%d y=%d file=%s\n",
                   logo->x, logo->y, logo->file_name);
            av_log(ctx, AV_LOG_DEBUG,
                   " RGB=(%d,%d,%d) x=%d y=%d file=%s\n",
                   logo->alpha_R, logo->alpha_G, logo->alpha_B,
                   logo->x, logo->y, logo->file_name);
        } else {
            av_log(ctx, AV_LOG_ERROR,
                   " expected 3 or 6 arguments\n\t\t\tlogo={R:G:B:}x:y:filename\n\t\t\toptional R,G,B selects a color to be the transparent one\n\t\t\tlogo_without_alpha=x:y:filename forces overlay of all pixels\n\t\t\tbut wrong args are given: '%s'\n",
                   args);
            return -1;
        }
    }

    if (!strcmp(ctx->filter->name, "logo_without_alpha")) {
        logo->alpha_R = logo->alpha_G = logo->alpha_B = 999;
        av_log(ctx, AV_LOG_INFO, " processing logofile without alpha\n");
    }

    if (!
        (logo->sws =
         sws_getContext(16, 16, 0, 16, 16, 0, SWS_BICUBIC, NULL, NULL,
                        NULL))) {
        av_log(ctx, AV_LOG_ERROR, " cannot get SwsContext for swscale\n");
        return -1;
    }
    // load logo image and create rgba32 and video_format frames of logo
    return load_logo_create_frames(ctx);
}

static void uninit(AVFilterContext * ctx)
{

    LogoContext *logo;

    logo = ctx->priv;

    if (logo->sws != NULL)
        sws_freeContext(logo->sws);
    av_free(&logo->plogo_frame);
    av_free(&logo->plogo_frame_rgba32);
    av_free(&logo->plogo_frame_video_format);
    av_free(&logo->buffer_logo_frame);
    av_free(&logo->buffer_logo_frame_rgba32);
    av_free(&logo->buffer_logo_frame_video_format);
    av_free(&logo->pRuler_0);
    av_free(&logo->pRuler_1_2);
}

static AVFilterFormats *make_format_list(LogoContext * logo)
{
    AVFilterFormats *ret;
    int i;

    ret = av_mallocz(sizeof(AVFilterFormats));
    ret->formats = av_malloc(sizeof(int) * PIX_FMT_NB);

    for (i = 0; i < PIX_FMT_NB; i++) {
        switch (i) {
            /* don't support these */
        case PIX_FMT_YUYV422:
        case PIX_FMT_MONOBLACK:
        case PIX_FMT_UYVY422:
            break;
            /* support everything else (if named) */
        default:
            if (av_pix_fmt_descriptors[i].name)
                ret->formats[ret->format_count++] = i;
        }
    }
    return ret;
}

static int query_formats_pixdesc(AVFilterContext * ctx)
{
    avfilter_set_common_formats(ctx, make_format_list(ctx->priv));
    return 0;
}

static int config_props_input(AVFilterLink * link)
{
    LogoContext *logo;
    AVFilterContext *ctx;
    int i, j, inc_i, inc_j, numBytes, r_0_numBytes, r_1_2_numBytes;
    RGBA *pRGBA;
    uint8_t *pRGBA_sol;
    uint8_t *pRuler;
	uint8_t nb_channels;
    const AVPixFmtDescriptor *pixdesc;

    logo = link->dst->priv;
    ctx = logo->filter_ctx;     // get AVFilterContext ptr from LogoContext
    pixdesc = &av_pix_fmt_descriptors[link->format];
	nb_channels = avcodec_get_channels(link->format);

    /* how many bits per pixel in the planes? */
    memset(logo->bpp, 0, sizeof(logo->bpp));
    for (i = 0; i < nb_channels; i++) {
        logo->bpp[pixdesc->comp[i].plane] +=
            1 + pixdesc->comp[i].depth_minus1;
    }
    /* now in bytes per pixel in the plane */
    for (i = 0; i < 4; i++) {
        logo->bpp[i] >>= 3;
    }

    logo->hsub = pixdesc->log2_chroma_h;
    logo->vsub = pixdesc->log2_chroma_w;
    av_log(ctx, AV_LOG_DEBUG,
           " pixel info:bpp={%d,%d,%d,%d} hsub=%d vsub=%d\n", logo->bpp[0],
           logo->bpp[1], logo->bpp[2], logo->bpp[3], logo->hsub,
           logo->vsub);

    logo->video_w = link->w;
    logo->video_h = link->h;
    logo->video_format = link->format;
    av_log(ctx, AV_LOG_DEBUG, " video size is %dx%d\tpixfmt:%s\n",
           logo->video_w, logo->video_h, pixdesc_name(logo->video_format));

    /* create a copy of logo-frame in video's pixfmt (if it's different)
     * to prepare a speedy way of overlaying the many video frames
     * without any duplication, format translation or other expensive things
     */

    if (link->format == logo->format) {
        logo->plogo_frame_video_format = logo->plogo_frame;
        logo->buffer_logo_frame_video_format = logo->buffer_logo_frame;
    } else if (link->format != PIX_FMT_RGBA) {
        // transform it with swscaler from PIX_FMT_RGBA to link->format
        av_log(ctx, AV_LOG_DEBUG,
               " transform logo image from RGBA to pix_fmt=%s\n",
               pixdesc_name(link->format));

        // Allocate an AVFrame structure
        logo->plogo_frame_video_format = avcodec_alloc_frame();
        if (logo->plogo_frame_video_format == NULL) {
            av_log(ctx, AV_LOG_ERROR,
                   " failed to alloc plogo_frame_video_format\n");
            return -1;
        }
        logo->sws =
            sws_getCachedContext(logo->sws, logo->w, logo->h, PIX_FMT_RGBA,
                                 logo->w, logo->h, link->format,
                                 SWS_BICUBIC, NULL, NULL, NULL);
        if (logo->sws == NULL) {
            av_log(ctx, AV_LOG_ERROR,
                   " cannot initialize the to-video_format conversion context\n");
            return -1;
        }
        // Determine required buffer size and allocate buffer
        numBytes = avpicture_get_size(link->format, logo->w, logo->h);
        logo->buffer_logo_frame_video_format = av_malloc(numBytes);
        // Assign appropriate parts of buffer to image planes in plogo_frame
        avpicture_fill((AVPicture *) logo->plogo_frame_video_format,
                       logo->buffer_logo_frame_video_format, link->format,
                       logo->w, logo->h);

        // transform to video pixel format
        sws_scale(logo->sws, logo->plogo_frame_rgba32->data,
                  logo->plogo_frame_rgba32->linesize, 0, logo->h,
                  logo->plogo_frame_video_format->data,
                  logo->plogo_frame_video_format->linesize);
        av_log(ctx, AV_LOG_DEBUG,
               " logo linesizes [0]=%d [1]=%d [2]=%d [3]=%d in videos pixfmt\n",
               ((AVPicture *) logo->plogo_frame_video_format)->linesize[0],
               ((AVPicture *) logo->plogo_frame_video_format)->linesize[1],
               ((AVPicture *) logo->plogo_frame_video_format)->linesize[2],
               ((AVPicture *) logo->plogo_frame_video_format)->
               linesize[3]);

    } else {
        logo->plogo_frame_video_format = logo->plogo_frame_rgba32;
        logo->buffer_logo_frame_video_format =
            logo->buffer_logo_frame_rgba32;
    }

    logo->app_x = logo->x;
    logo->app_y = logo->y;
    logo->app_w = logo->w;
    logo->app_h = logo->h;

    /* if negative, it is based on right/bottom border of logo and video */
    if (logo->x < 0)
        logo->app_x = logo->video_w - 1 - logo->w + logo->x;
    if (logo->y < 0)
        logo->app_y = logo->video_h - 1 - logo->h + logo->y;

    /* never cross left border or top of video, just shift it */
    if (logo->app_x < 0)
        logo->app_x = 0;
    if (logo->app_y < 0)
        logo->app_y = 0;

    /* fit overlay into video if overlapping borders */
    if (logo->app_x > logo->video_w - 1)
        logo->app_x = logo->video_w - 1;
    if (logo->app_y > logo->video_h - 1)
        logo->app_y = logo->video_h - 1;
    if (logo->app_w > logo->video_w - 1 - logo->app_x)
        logo->app_w = logo->video_w - 1 - logo->app_x;
    if (logo->app_h > logo->video_h - 1 - logo->app_y)
        logo->app_h = logo->video_h - 1 - logo->app_y;

    av_log(ctx, AV_LOG_INFO,
           " overlay logo of size (%d,%d) at (%d,%d) w=%d h=%d onto video of size (%d,%d) pixfmt=%s\n",
           logo->w, logo->h, logo->app_x, logo->app_y, logo->app_w,
           logo->app_h, logo->video_w, logo->video_h,
           pixdesc_name(logo->video_format));

    /* get memory for the alpha rulers for plane 0 and plane 1 and 2 */
    r_0_numBytes = logo->app_w * logo->app_h;
    logo->pRuler_0 = NULL;
    logo->pRuler_0 = av_mallocz(r_0_numBytes);

    if (logo->hsub == 0 && logo->vsub == 0) {
        r_1_2_numBytes = r_0_numBytes;
        logo->pRuler_1_2 = logo->pRuler_0;
    } else {
        r_1_2_numBytes =
            ((logo->app_w + (1 << logo->hsub) -
              1) >> logo->hsub) * ((logo->app_h + (1 << logo->vsub) -
                                    1) >> logo->vsub);
        logo->pRuler_1_2 = NULL;
        logo->pRuler_1_2 = av_mallocz(r_1_2_numBytes);
    }

    if (logo->pRuler_0 == 0 || logo->pRuler_1_2 == 0) {
        av_log(ctx, AV_LOG_ERROR, " av_mallocz for Rulers failed\n");
        return -1;
    }

    /* fill the rulers from RGBA alpha information */
    /* Ruler_0 */
    pRuler = logo->pRuler_0;
    pRGBA_sol = logo->plogo_frame_rgba32->data[0];
    for (i = 0; i < logo->app_h; i++) {
        pRGBA = (RGBA *) pRGBA_sol;
        for (j = 0; j < logo->app_w; j++) {
            *pRuler = pRGBA->A;
            av_log(ctx, AV_LOG_DEBUG,
                   " Ruler_0:(%d,%d)=(%3d,%3d,%3d) \talpha=%3d\t%p\n", i,
                   j, pRGBA->R, pRGBA->G, pRGBA->B, *pRuler, pRGBA);
            pRuler++;
            pRGBA++;
        }
        pRGBA_sol += logo->plogo_frame_rgba32->linesize[0];     // jump to next start of line 
    }

    /* Ruler_1_2 */
    if (logo->pRuler_0 != logo->pRuler_1_2) {
        pRuler = logo->pRuler_1_2;
        pRGBA_sol = logo->plogo_frame_rgba32->data[0];
        inc_i = 1 << logo->vsub;
        inc_j = 1 << logo->hsub;
        for (i = 0; i < logo->app_h; i += inc_i) {
            pRGBA = (RGBA *) pRGBA_sol;
            for (j = 0; j < logo->app_w; j += inc_j) {
                *pRuler = pRGBA->A;
                av_log(ctx, AV_LOG_DEBUG,
                       " Ruler_1_2:(%d,%d)=(%3d,%3d,%3d) \talpha=%3d\t%p\n",
                       i, j, pRGBA->R, pRGBA->G, pRGBA->B, *pRuler, pRGBA);
                pRuler++;
                pRGBA += inc_j;
            }
            pRGBA_sol += inc_i * logo->plogo_frame_rgba32->linesize[0]; // jump to next start of line 
        }
    }

    return 0;
}

static void overlay_one_plane(uint8_t * dst, int dst_wrap,
                              const uint8_t * src, int src_wrap,
                              int bwidth, int bpp, int h, uint8_t * pRuler)
{
    int i, j;

    if ((!dst) || (!src))
        return;

    for (i = 0; i < h; i++) {
        for (j = 0; j < bwidth; j += bpp) {
            if (*pRuler != 0)
                memcpy(dst + j, src + j, bpp);
            pRuler++;
        }
        dst += dst_wrap;
        src += src_wrap;
    }
}

static void overlay_planes(LogoContext * logo,
                           AVPicture * dst, const AVPicture * src,
                           int pix_fmt, int app_w, int app_h)
{
    int i, h, bwidth;
    const AVPixFmtDescriptor *pixdesc;
    uint8_t *pRuler;
	uint8_t nb_channels;
    AVFilterContext *ctx;

    ctx = logo->filter_ctx;     // get AVFilterContext pointer from LogoContext
    pixdesc = &av_pix_fmt_descriptors[pix_fmt];
	nb_channels = avcodec_get_channels(pix_fmt);

    pRuler = logo->pRuler_0;

    switch (pixdesc->flags & PIX_FMT_PAL) {

    case PIX_FMT_PAL:
        overlay_one_plane(dst->data[0], dst->linesize[0],
                          src->data[0], src->linesize[0],
                          app_w, logo->bpp[0], app_h, pRuler);
        /* do not copy the palette in data[1]. image must! use same palette */
        break;

    default:
        for (i = 0; i < nb_channels; i++) {
            h = app_h;
            bwidth = logo->bpp[i] * app_w;
            if (i == 1 || i == 2) {
                h = h >> pixdesc->log2_chroma_h;
                bwidth = bwidth >> pixdesc->log2_chroma_w;
                pRuler = logo->pRuler_1_2;
            }
            overlay_one_plane(dst->data[i], dst->linesize[i],
                              src->data[i], src->linesize[i],
                              bwidth, logo->bpp[i], h, pRuler);
        }
    }
}

static void overlay_with_logo(LogoContext * logo,
                              AVFilterBufferRef * dst, int app_x, int app_y,
                              AVPicture * src,
                              int app_w, int app_h, int hsub, int vsub)
{
    AVPicture pic;
    int i;

    /* create AVPicture struct from AVFilterBufferRef given by link */
    memcpy(&pic, &dst->data, sizeof(AVPicture));

    /* let this AVPicture point to target point in dst picture 
     * so we have to loop only around the smaller logo sized rectangle
     */
    pic.data[0] += app_x * logo->bpp[0];
    pic.data[0] += app_y * pic.linesize[0];
    for (i = 1; i < 4; i++) {
        if (pic.data[i] == NULL)
            continue;
        if (pic.data[i]) {
            pic.data[i] += (app_x * logo->bpp[i]) >> hsub;
            pic.data[i] += (app_y >> vsub) * pic.linesize[i];
        }
    }

    /*  overlay video pic in size w=width h=heigth ruled by RGBA Alpha-path
     *                   video pic        logo pic      video pixfmt      width
     *                   I                I             I                 I
     *                   I                I             I                 I      height
     *                   vvvv  vvvvvvvvvvvvvvvvvvvvvv   vvvvvvvvvvvvvvvv  v      v   */
    overlay_planes(logo, &pic, (AVPicture *) src->data, dst->format,
                   app_w, app_h);
}

static void start_frame(AVFilterLink * link, AVFilterBufferRef * picref)
{
    avfilter_start_frame(link->dst->outputs[0], picref);
}

static void draw_slice(AVFilterLink * link, int y, int h, int slice_dir)
{
    LogoContext *logo = link->dst->priv;
    AVFilterBufferRef *pic = link->dst->outputs[0]->cur_buf;
    AVFilterContext *ctx;

    ctx = logo->filter_ctx;     // get AVFilterContext pointer from LogoContext

    /* overlay the logo into the output frame */
    overlay_with_logo(logo, pic,
                      logo->app_x, logo->app_y,
                      (AVPicture *) logo->plogo_frame_video_format,
                      logo->app_w, logo->app_h, logo->hsub, logo->vsub);

    avfilter_draw_slice(link->dst->outputs[0], y, h, slice_dir);
}

static void end_frame(AVFilterLink * link)
{
    AVFilterLink *out = link->dst->outputs[0];

    avfilter_end_frame(out);

    /* unreference the source picture if we're feeding the destination filter
     * a copied version dues to permission issues */
    if (link->src_buf) {
        avfilter_unref_buffer(link->src_buf);
        link->src_buf = NULL;
    }
}

AVFilter avfilter_vf_logo_without_alpha = {
    .name = "logo_without_alpha",

    .init = init,
    .uninit = uninit,

    .query_formats = query_formats_pixdesc,

    .priv_size = sizeof(LogoContext),

    .inputs = (AVFilterPad[]){{.name = "default",
                               .type = CODEC_TYPE_VIDEO,
                               .config_props = config_props_input,
                               .start_frame = start_frame,
                               .draw_slice = draw_slice,
                               .end_frame = end_frame,
                               .min_perms = AV_PERM_WRITE | AV_PERM_READ,
                               .rej_perms = AV_PERM_REUSE | AV_PERM_REUSE2}
                              ,
                              {.name = NULL}
                              }
    ,
    .outputs = (AVFilterPad[]){{.name = "default",
                                .type = CODEC_TYPE_VIDEO,}
                               ,
                               {.name = NULL}
                               }
    ,
};

AVFilter avfilter_vf_logo = {
    .name = "logo",

    .init = init,
    .uninit = uninit,

    .query_formats = query_formats_pixdesc,

    .priv_size = sizeof(LogoContext),

    .inputs = (AVFilterPad[]){{.name = "default",
                               .type = CODEC_TYPE_VIDEO,
                               .config_props = config_props_input,
                               .start_frame = start_frame,
                               .draw_slice = draw_slice,
                               .end_frame = end_frame,
                               .min_perms = AV_PERM_WRITE | AV_PERM_READ,
                               .rej_perms = AV_PERM_REUSE | AV_PERM_REUSE2}
                              ,
                              {.name = NULL}
                              }
    ,
    .outputs = (AVFilterPad[]){{.name = "default",
                                .type = CODEC_TYPE_VIDEO,}
                               ,
                               {.name = NULL}
                               }
    ,
};

