/*
 * Box drawing filter. Also a nice template for a filter that needs to write
 * in the input frame.
 *
 * Copyright (c) 2008 Affine Systems, Inc (Michael Sullivan, Bobby Impollonia)
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

#include <string.h>
#include <stdio.h>
#include <ctype.h>

#include "avfilter.h"
#include "parseutils.h"

typedef struct
{
    int enc; //0:decode 1:encode
	char sig_file[1024];//signature file
} WatermarkContext;

static av_cold int init(AVFilterContext *ctx, const char *args, void *opaque)
{
    WatermarkContext *context= ctx->priv;

    if(!args || strlen(args) > 1024) {
        av_log(ctx, AV_LOG_ERROR, "Invalid arguments!\n");
        return -1;
    }

    sscanf(args, "%d:%s", &(context->enc), &(context->sig_file[0]));

    return 0;
}

static int query_formats(AVFilterContext *ctx)
{
    enum PixelFormat pix_fmts[] = {
        PIX_FMT_YUV444P,  PIX_FMT_YUV422P,  PIX_FMT_YUV420P,
        PIX_FMT_YUV411P,  PIX_FMT_YUV410P,
        PIX_FMT_YUVJ444P, PIX_FMT_YUVJ422P, PIX_FMT_YUVJ420P,
        PIX_FMT_YUV440P,  PIX_FMT_YUVJ440P,
        PIX_FMT_NONE
    };

    avfilter_set_common_formats(ctx, avfilter_make_format_list(pix_fmts));
    return 0;
}

static int config_input(AVFilterLink *link)
{
    WatermarkContext *context = link->dst->priv;

    return 0;
}

static AVFilterPicRef *get_video_buffer(AVFilterLink *link, int perms,
                                        int w, int h)
{
    return avfilter_get_video_buffer(link->dst->outputs[0], perms, w, h);
}

static void start_frame(AVFilterLink *link, AVFilterPicRef *picref)
{
    avfilter_start_frame(link->dst->outputs[0], picref);
}


static void encode_watermark(AVFilterPicRef *pic, WatermarkContext* context)
{
    int x, y;
    unsigned char *row;

    for (y = 0; y < pic->h; y++) {
        row = pic->data[0] + y * pic->linesize[0];

        for (x = 0; x < pic->w; x++)
                row[x] = 0x52;
    }
}

static void end_frame(AVFilterLink *link)
{
    WatermarkContext *context = link->dst->priv;
    AVFilterLink *output = link->dst->outputs[0];
    AVFilterPicRef *pic = link->cur_pic;

    encode_watermark(pic,context);

    avfilter_draw_slice(output, 0, pic->h, 1);
    avfilter_end_frame(output);
}

AVFilter avfilter_vf_watermark=
{
    .name      = "watermark",
    .priv_size = sizeof(WatermarkContext),
    .init      = init,

    .query_formats   = query_formats,
    .inputs    = (AVFilterPad[]) {{ .name            = "default",
                                    .type            = CODEC_TYPE_VIDEO,
                                    .get_video_buffer= get_video_buffer,
                                    .start_frame     = start_frame,
                                    .end_frame       = end_frame,
                                    .config_props    = config_input,
                                    .min_perms       = AV_PERM_WRITE |
                                                       AV_PERM_READ,
                                    .rej_perms       = AV_PERM_REUSE |
                                                       AV_PERM_REUSE2},
                                  { .name = NULL}},
    .outputs   = (AVFilterPad[]) {{ .name            = "default",
                                    .type            = CODEC_TYPE_VIDEO, },
                                  { .name = NULL}},
};
