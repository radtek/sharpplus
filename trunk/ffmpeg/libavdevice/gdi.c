/*
 * GDI video grab interface
 * Copyright (c) 2007 Ramiro Polla.
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

#include "libavformat/avformat.h"
#include <vfw.h>
#include <windows.h>

struct gdi_ctx {
    HWND hDesktopWnd;
    HDC hDesktopDC;
    HDC hCaptureDC;
    HBITMAP hCaptureBitmap;
    BITMAPINFOHEADER *bih;
    int x_off;
    int y_off;
};

static int gdi_read_header(AVFormatContext *s, AVFormatParameters *ap)
{
    struct gdi_ctx *ctx = s->priv_data;
    AVCodecContext *codec;
    AVStream *st;
    int width, height;
    BITMAPINFOHEADER bih;
    int bihsize = sizeof(BITMAPINFOHEADER);

    sscanf( s->filename, "%d,%d", &ctx->x_off, &ctx->y_off );
    memset( &bih, 0, sizeof(bih) );

    width   = GetSystemMetrics( SM_CXSCREEN );
    height  = GetSystemMetrics( SM_CYSCREEN );

    if( ctx->x_off + ap->width > width || ctx->y_off + ap->height > height )
    {
        av_log( s, AV_LOG_ERROR, "Specified size greater than Desktop size."
                " %d+%dx%d+%d > %dx%d\n", ctx->x_off, ap->width,
                ctx->y_off, ap->height, width, height );
        return AVERROR_IO;
    }

    width  = ap->width  ? ap->width  : width  - ctx->x_off;
    height = ap->height ? ap->height : height - ctx->y_off;

    ctx->hDesktopWnd = GetDesktopWindow( );
    ctx->hDesktopDC = GetDC( ctx->hDesktopWnd );
    ctx->hCaptureDC = CreateCompatibleDC( ctx->hDesktopDC );
    ctx->hCaptureBitmap = CreateCompatibleBitmap( ctx->hDesktopDC,
                                                  width, height );
    SelectObject( ctx->hCaptureDC, ctx->hCaptureBitmap );

    bih.biSize = bihsize;
    GetDIBits( ctx->hCaptureDC, ctx->hCaptureBitmap,
               0, 0, NULL, &bih, DIB_RGB_COLORS );

    if( bih.biCompression == 3 )
        bihsize += 0x10;

    ctx->bih = av_mallocz( bihsize );
    if( ctx->bih == NULL )
        return AVERROR_NOMEM;

    ctx->bih->biSize = bihsize;
    GetDIBits( ctx->hCaptureDC, ctx->hCaptureBitmap,
               0, 0, NULL, ctx->bih, DIB_RGB_COLORS );

    st = av_new_stream( s, 0 );
    if ( !st )
        return AVERROR_NOMEM;

    codec = st->codec;
    codec->codec_type = CODEC_TYPE_VIDEO;
    codec->codec_id = CODEC_ID_RAWVIDEO;
    codec->bits_per_coded_sample = ctx->bih->biBitCount;
    if( ctx->bih->biCompression > 3 )
        codec->codec_tag = ctx->bih->biCompression;
    codec->width = ctx->bih->biWidth;
    codec->height = ctx->bih->biHeight;
    codec->time_base = ap->time_base;

    av_set_pts_info( st, 32, 1, 1000 );

    return 0;
}

static int gdi_read_packet( AVFormatContext *s, AVPacket *pkt )
{
    struct gdi_ctx *ctx = s->priv_data;

    if( av_new_packet( pkt, ctx->bih->biSizeImage ) < 0 )
        return AVERROR_IO;

    BitBlt( ctx->hCaptureDC, 0, 0,
            ctx->bih->biWidth, ctx->bih->biHeight,
            ctx->hDesktopDC, ctx->x_off, ctx->y_off, SRCCOPY | CAPTUREBLT );
    GetDIBits( ctx->hCaptureDC, ctx->hCaptureBitmap,
               0, ctx->bih->biHeight, pkt->data, ctx->bih,
               DIB_RGB_COLORS );

    pkt->pts = GetTickCount( );
    pkt->stream_index = 0;

    return pkt->size;
}

static int gdi_read_close( AVFormatContext *s )
{
    struct gdi_ctx *ctx = s->priv_data;

    av_free( ctx->bih );
    ReleaseDC( ctx->hDesktopWnd, ctx->hDesktopDC );
    DeleteDC( ctx->hCaptureDC );
    DeleteObject( ctx->hCaptureBitmap );

    return 0;
}

AVInputFormat gdi_demuxer = {
    "gdi",
    "GDI video grab",
    sizeof(struct gdi_ctx),
    NULL,
    gdi_read_header,
    gdi_read_packet,
    gdi_read_close,
    .flags = AVFMT_NOFILE,
};
