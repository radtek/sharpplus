/*
 * FFV1 codec for libavcodec
 *
 * Copyright (c) 2003 Michael Niedermayer <michaelni@gmx.at>
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
 * @file
 * FF Video Codec 1 (a lossless codec)
 */

#include "avcodec.h"
#include "get_bits.h"
#include "put_bits.h"
#include "dsputil.h"
#include "rangecoder.h"
#include "golomb.h"
#include "mathops.h"
#include "libavutil/avassert.h"

#define MAX_PLANES 4
#define CONTEXT_SIZE 32

#define MAX_QUANT_TABLES 8
#define MAX_CONTEXT_INPUTS 5

extern const uint8_t ff_log2_run[32];

static const int8_t quant3[256]={
 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1, 0,
};

static const int8_t quant5_10bit[256]={
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
-1,-1,-1,-1,-1,-1,-0,-0,-0,-0,-0,-0,-0,-0,-0,-0,
};

static const int8_t quant5[256]={
 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,-1,-1,
};
static const int8_t quant7[256]={
 0, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3,
 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
-3,-3,-3,-3,-3,-3,-3,-3,-3,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,-1,
};
static const int8_t quant9[256]={
 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3,
 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-3,-3,-3,-3,
-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-2,-2,-2,-2,-1,-1,
};
static const int8_t quant9_10bit[256]={
 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3,
 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-3,-3,-3,-3,-3,-3,-3,
-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
-3,-3,-3,-3,-3,-3,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,
-2,-2,-2,-2,-1,-1,-1,-1,-1,-1,-1,-1,-0,-0,-0,-0,
};

static const int8_t quant11[256]={
 0, 1, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4,
 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,
-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,
-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,
-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,
-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,
-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-3,-3,-3,-3,-3,-3,-3,-2,-2,-2,-1,
};
static const int8_t quant13[256]={
 0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4,
 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,
-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,
-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,
-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,
-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-5,
-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,
-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,
-4,-4,-4,-4,-4,-4,-4,-4,-4,-3,-3,-3,-3,-2,-2,-1,
};

static const uint8_t ver2_state[256]= {
   0,  10,  10,  10,  10,  16,  16,  16,  28,  16,  16,  29,  42,  49,  20,  49,
  59,  25,  26,  26,  27,  31,  33,  33,  33,  34,  34,  37,  67,  38,  39,  39,
  40,  40,  41,  79,  43,  44,  45,  45,  48,  48,  64,  50,  51,  52,  88,  52,
  53,  74,  55,  57,  58,  58,  74,  60, 101,  61,  62,  84,  66,  66,  68,  69,
  87,  82,  71,  97,  73,  73,  82,  75, 111,  77,  94,  78,  87,  81,  83,  97,
  85,  83,  94,  86,  99,  89,  90,  99, 111,  92,  93, 134,  95,  98, 105,  98,
 105, 110, 102, 108, 102, 118, 103, 106, 106, 113, 109, 112, 114, 112, 116, 125,
 115, 116, 117, 117, 126, 119, 125, 121, 121, 123, 145, 124, 126, 131, 127, 129,
 165, 130, 132, 138, 133, 135, 145, 136, 137, 139, 146, 141, 143, 142, 144, 148,
 147, 155, 151, 149, 151, 150, 152, 157, 153, 154, 156, 168, 158, 162, 161, 160,
 172, 163, 169, 164, 166, 184, 167, 170, 177, 174, 171, 173, 182, 176, 180, 178,
 175, 189, 179, 181, 186, 183, 192, 185, 200, 187, 191, 188, 190, 197, 193, 196,
 197, 194, 195, 196, 198, 202, 199, 201, 210, 203, 207, 204, 205, 206, 208, 214,
 209, 211, 221, 212, 213, 215, 224, 216, 217, 218, 219, 220, 222, 228, 223, 225,
 226, 224, 227, 229, 240, 230, 231, 232, 233, 234, 235, 236, 238, 239, 237, 242,
 241, 243, 242, 244, 245, 246, 247, 248, 249, 250, 251, 252, 252, 253, 254, 255,
};

typedef struct VlcState{
    int16_t drift;
    uint16_t error_sum;
    int8_t bias;
    uint8_t count;
} VlcState;

typedef struct PlaneContext{
    int16_t quant_table[MAX_CONTEXT_INPUTS][256];
    int context_count;
    uint8_t (*state)[CONTEXT_SIZE];
    VlcState *vlc_state;
    uint8_t interlace_bit_state[2];
} PlaneContext;

#define MAX_SLICES 256

typedef struct FFV1Context{
    AVCodecContext *avctx;
    RangeCoder c;
    GetBitContext gb;
    PutBitContext pb;
    int version;
    int width, height;
    int chroma_h_shift, chroma_v_shift;
    int flags;
    int picture_number;
    AVFrame picture;
    int plane_count;
    int ac;                              ///< 1=range coder <-> 0=golomb rice
    PlaneContext plane[MAX_PLANES];
    int16_t quant_table[MAX_CONTEXT_INPUTS][256];
    int16_t quant_tables[MAX_QUANT_TABLES][MAX_CONTEXT_INPUTS][256];
    int context_count[MAX_QUANT_TABLES];
    uint8_t state_transition[256];
    int run_index;
    int colorspace;
    int_fast16_t *sample_buffer;

    int quant_table_count;

    DSPContext dsp;

    struct FFV1Context *slice_context[MAX_SLICES];
    int slice_count;
    int num_v_slices;
    int num_h_slices;
    int slice_width;
    int slice_height;
    int slice_x;
    int slice_y;
}FFV1Context;

static av_always_inline int fold(int diff, int bits){
    if(bits==8)
        diff= (int8_t)diff;
    else{
        diff+= 1<<(bits-1);
        diff&=(1<<bits)-1;
        diff-= 1<<(bits-1);
    }

    return diff;
}

static inline int predict(int_fast16_t *src, int_fast16_t *last){
    const int LT= last[-1];
    const int  T= last[ 0];
    const int L =  src[-1];

    return mid_pred(L, L + T - LT, T);
}

static inline int get_context(PlaneContext *p, int_fast16_t *src, int_fast16_t *last, int_fast16_t *last2){
    const int LT= last[-1];
    const int  T= last[ 0];
    const int RT= last[ 1];
    const int L =  src[-1];

    if(p->quant_table[3][127]){
        const int TT= last2[0];
        const int LL=  src[-2];
        return p->quant_table[0][(L-LT) & 0xFF] + p->quant_table[1][(LT-T) & 0xFF] + p->quant_table[2][(T-RT) & 0xFF]
              +p->quant_table[3][(LL-L) & 0xFF] + p->quant_table[4][(TT-T) & 0xFF];
    }else
        return p->quant_table[0][(L-LT) & 0xFF] + p->quant_table[1][(LT-T) & 0xFF] + p->quant_table[2][(T-RT) & 0xFF];
}

static inline void put_symbol_inline(RangeCoder *c, uint8_t *state, int v, int is_signed){
    int i;

    if(v){
        const int a= FFABS(v);
        const int e= av_log2(a);
        put_rac(c, state+0, 0);
        if(e<=9){
            for(i=0; i<e; i++){
                put_rac(c, state+1+i, 1);  //1..10
            }
            put_rac(c, state+1+i, 0);

            for(i=e-1; i>=0; i--){
                put_rac(c, state+22+i, (a>>i)&1); //22..31
            }

            if(is_signed)
                put_rac(c, state+11 + e, v < 0); //11..21
        }else{
            for(i=0; i<e; i++){
                put_rac(c, state+1+FFMIN(i,9), 1);  //1..10
            }
            put_rac(c, state+1+9, 0);

            for(i=e-1; i>=0; i--){
                put_rac(c, state+22+FFMIN(i,9), (a>>i)&1); //22..31
            }

            if(is_signed)
                put_rac(c, state+11 + 10, v < 0); //11..21
        }
    }else{
        put_rac(c, state+0, 1);
    }
}

static void av_noinline put_symbol(RangeCoder *c, uint8_t *state, int v, int is_signed){
    put_symbol_inline(c, state, v, is_signed);
}

static inline av_flatten int get_symbol_inline(RangeCoder *c, uint8_t *state, int is_signed){
    if(get_rac(c, state+0))
        return 0;
    else{
        int i, e, a;
        e= 0;
        while(get_rac(c, state+1 + FFMIN(e,9))){ //1..10
            e++;
        }

        a= 1;
        for(i=e-1; i>=0; i--){
            a += a + get_rac(c, state+22 + FFMIN(i,9)); //22..31
        }

        e= -(is_signed && get_rac(c, state+11 + FFMIN(e, 10))); //11..21
        return (a^e)-e;
    }
}

static int av_noinline get_symbol(RangeCoder *c, uint8_t *state, int is_signed){
    return get_symbol_inline(c, state, is_signed);
}

static inline void update_vlc_state(VlcState * const state, const int v){
    int drift= state->drift;
    int count= state->count;
    state->error_sum += FFABS(v);
    drift += v;

    if(count == 128){ //FIXME variable
        count >>= 1;
        drift >>= 1;
        state->error_sum >>= 1;
    }
    count++;

    if(drift <= -count){
        if(state->bias > -128) state->bias--;

        drift += count;
        if(drift <= -count)
            drift= -count + 1;
    }else if(drift > 0){
        if(state->bias <  127) state->bias++;

        drift -= count;
        if(drift > 0)
            drift= 0;
    }

    state->drift= drift;
    state->count= count;
}

static inline void put_vlc_symbol(PutBitContext *pb, VlcState * const state, int v, int bits){
    int i, k, code;
//printf("final: %d ", v);
    v = fold(v - state->bias, bits);

    i= state->count;
    k=0;
    while(i < state->error_sum){ //FIXME optimize
        k++;
        i += i;
    }

    assert(k<=8);

#if 0 // JPEG LS
    if(k==0 && 2*state->drift <= - state->count) code= v ^ (-1);
    else                                         code= v;
#else
     code= v ^ ((2*state->drift + state->count)>>31);
#endif

//printf("v:%d/%d bias:%d error:%d drift:%d count:%d k:%d\n", v, code, state->bias, state->error_sum, state->drift, state->count, k);
    set_sr_golomb(pb, code, k, 12, bits);

    update_vlc_state(state, v);
}

static inline int get_vlc_symbol(GetBitContext *gb, VlcState * const state, int bits){
    int k, i, v, ret;

    i= state->count;
    k=0;
    while(i < state->error_sum){ //FIXME optimize
        k++;
        i += i;
    }

    assert(k<=8);

    v= get_sr_golomb(gb, k, 12, bits);
//printf("v:%d bias:%d error:%d drift:%d count:%d k:%d", v, state->bias, state->error_sum, state->drift, state->count, k);

#if 0 // JPEG LS
    if(k==0 && 2*state->drift <= - state->count) v ^= (-1);
#else
     v ^= ((2*state->drift + state->count)>>31);
#endif

    ret= fold(v + state->bias, bits);

    update_vlc_state(state, v);
//printf("final: %d\n", ret);
    return ret;
}

#if CONFIG_FFV1_ENCODER
static inline int encode_line(FFV1Context *s, int w, int_fast16_t *sample[2], int plane_index, int bits){
    PlaneContext * const p= &s->plane[plane_index];
    RangeCoder * const c= &s->c;
    int x;
    int run_index= s->run_index;
    int run_count=0;
    int run_mode=0;

    if(s->ac){
        if(c->bytestream_end - c->bytestream < w*20){
            av_log(s->avctx, AV_LOG_ERROR, "encoded frame too large\n");
            return -1;
        }
    }else{
        if(s->pb.buf_end - s->pb.buf - (put_bits_count(&s->pb)>>3) < w*4){
            av_log(s->avctx, AV_LOG_ERROR, "encoded frame too large\n");
            return -1;
        }
    }

    for(x=0; x<w; x++){
        int diff, context;

        context= get_context(p, sample[0]+x, sample[1]+x, sample[2]+x);
        diff= sample[0][x] - predict(sample[0]+x, sample[1]+x);

        if(context < 0){
            context = -context;
            diff= -diff;
        }

        diff= fold(diff, bits);

        if(s->ac){
            put_symbol_inline(c, p->state[context], diff, 1);
        }else{
            if(context == 0) run_mode=1;

            if(run_mode){

                if(diff){
                    while(run_count >= 1<<ff_log2_run[run_index]){
                        run_count -= 1<<ff_log2_run[run_index];
                        run_index++;
                        put_bits(&s->pb, 1, 1);
                    }

                    put_bits(&s->pb, 1 + ff_log2_run[run_index], run_count);
                    if(run_index) run_index--;
                    run_count=0;
                    run_mode=0;
                    if(diff>0) diff--;
                }else{
                    run_count++;
                }
            }

//            printf("count:%d index:%d, mode:%d, x:%d y:%d pos:%d\n", run_count, run_index, run_mode, x, y, (int)put_bits_count(&s->pb));

            if(run_mode == 0)
                put_vlc_symbol(&s->pb, &p->vlc_state[context], diff, bits);
        }
    }
    if(run_mode){
        while(run_count >= 1<<ff_log2_run[run_index]){
            run_count -= 1<<ff_log2_run[run_index];
            run_index++;
            put_bits(&s->pb, 1, 1);
        }

        if(run_count)
            put_bits(&s->pb, 1, 1);
    }
    s->run_index= run_index;

    return 0;
}

static void encode_plane(FFV1Context *s, uint8_t *src, int w, int h, int stride, int plane_index){
    int x,y,i;
    const int ring_size= s->avctx->context_model ? 3 : 2;
    int_fast16_t *sample[3];
    s->run_index=0;

    memset(s->sample_buffer, 0, ring_size*(w+6)*sizeof(*s->sample_buffer));

    for(y=0; y<h; y++){
        for(i=0; i<ring_size; i++)
            sample[i]= s->sample_buffer + (w+6)*((h+i-y)%ring_size) + 3;

        sample[0][-1]= sample[1][0  ];
        sample[1][ w]= sample[1][w-1];
//{START_TIMER
        if(s->avctx->bits_per_raw_sample<=8){
            for(x=0; x<w; x++){
                sample[0][x]= src[x + stride*y];
            }
            encode_line(s, w, sample, plane_index, 8);
        }else{
            for(x=0; x<w; x++){
                sample[0][x]= ((uint16_t*)(src + stride*y))[x] >> (16 - s->avctx->bits_per_raw_sample);
            }
            encode_line(s, w, sample, plane_index, s->avctx->bits_per_raw_sample);
        }
//STOP_TIMER("encode line")}
    }
}

static void encode_rgb_frame(FFV1Context *s, uint32_t *src, int w, int h, int stride){
    int x, y, p, i;
    const int ring_size= s->avctx->context_model ? 3 : 2;
    int_fast16_t *sample[3][3];
    s->run_index=0;

    memset(s->sample_buffer, 0, ring_size*3*(w+6)*sizeof(*s->sample_buffer));

    for(y=0; y<h; y++){
        for(i=0; i<ring_size; i++)
            for(p=0; p<3; p++)
                sample[p][i]= s->sample_buffer + p*ring_size*(w+6) + ((h+i-y)%ring_size)*(w+6) + 3;

        for(x=0; x<w; x++){
            int v= src[x + stride*y];
            int b= v&0xFF;
            int g= (v>>8)&0xFF;
            int r= (v>>16)&0xFF;

            b -= g;
            r -= g;
            g += (b + r)>>2;
            b += 0x100;
            r += 0x100;

//            assert(g>=0 && b>=0 && r>=0);
//            assert(g<256 && b<512 && r<512);
            sample[0][0][x]= g;
            sample[1][0][x]= b;
            sample[2][0][x]= r;
        }
        for(p=0; p<3; p++){
            sample[p][0][-1]= sample[p][1][0  ];
            sample[p][1][ w]= sample[p][1][w-1];
            encode_line(s, w, sample[p], FFMIN(p, 1), 9);
        }
    }
}

static void write_quant_table(RangeCoder *c, int16_t *quant_table){
    int last=0;
    int i;
    uint8_t state[CONTEXT_SIZE];
    memset(state, 128, sizeof(state));

    for(i=1; i<128 ; i++){
        if(quant_table[i] != quant_table[i-1]){
            put_symbol(c, state, i-last-1, 0);
            last= i;
        }
    }
    put_symbol(c, state, i-last-1, 0);
}

static void write_quant_tables(RangeCoder *c, int16_t quant_table[MAX_CONTEXT_INPUTS][256]){
    int i;
    for(i=0; i<5; i++)
        write_quant_table(c, quant_table[i]);
}

static void write_header(FFV1Context *f){
    uint8_t state[CONTEXT_SIZE];
    int i, j;
    RangeCoder * const c= &f->slice_context[0]->c;

    memset(state, 128, sizeof(state));

    if(f->version < 2){
        put_symbol(c, state, f->version, 0);
        put_symbol(c, state, f->ac, 0);
        if(f->ac>1){
            for(i=1; i<256; i++){
                f->state_transition[i]=ver2_state[i];
                put_symbol(c, state, ver2_state[i] - c->one_state[i], 1);
            }
        }
        put_symbol(c, state, f->colorspace, 0); //YUV cs type
        if(f->version>0)
            put_symbol(c, state, f->avctx->bits_per_raw_sample, 0);
        put_rac(c, state, 1); //chroma planes
            put_symbol(c, state, f->chroma_h_shift, 0);
            put_symbol(c, state, f->chroma_v_shift, 0);
        put_rac(c, state, 0); //no transparency plane

        write_quant_tables(c, f->quant_table);
    }else{
        put_symbol(c, state, f->slice_count, 0);
        for(i=0; i<f->slice_count; i++){
            FFV1Context *fs= f->slice_context[i];
            put_symbol(c, state, (fs->slice_x     +1)*f->num_h_slices / f->width   , 0);
            put_symbol(c, state, (fs->slice_y     +1)*f->num_v_slices / f->height  , 0);
            put_symbol(c, state, (fs->slice_width +1)*f->num_h_slices / f->width -1, 0);
            put_symbol(c, state, (fs->slice_height+1)*f->num_v_slices / f->height-1, 0);
            for(j=0; j<f->plane_count; j++)
            put_symbol(c, state, f->avctx->context_model, 0);
        }
    }
}
#endif /* CONFIG_FFV1_ENCODER */

static av_cold int common_init(AVCodecContext *avctx){
    FFV1Context *s = avctx->priv_data;

    s->avctx= avctx;
    s->flags= avctx->flags;

    dsputil_init(&s->dsp, avctx);

    s->width = avctx->width;
    s->height= avctx->height;

    assert(s->width && s->height);
    //defaults
    s->num_h_slices=1;
    s->num_v_slices=1;


    return 0;
}

static int init_slice_state(FFV1Context *f){
    int i, j;

    for(i=0; i<f->slice_count; i++){
        FFV1Context *fs= f->slice_context[i];
        for(j=0; j<f->plane_count; j++){
            PlaneContext * const p= &fs->plane[j];

            if(fs->ac){
                if(!p->    state) p->    state= av_malloc(CONTEXT_SIZE*p->context_count*sizeof(uint8_t));
                if(!p->    state)
                    return AVERROR(ENOMEM);
            }else{
                if(!p->vlc_state) p->vlc_state= av_malloc(p->context_count*sizeof(VlcState));
                if(!p->vlc_state)
                    return AVERROR(ENOMEM);
            }
        }

        if (fs->ac>1){
            //FIXME only redo if state_transition changed
            for(j=1; j<256; j++){
                fs->c.one_state [    j]= fs->state_transition[j];
                fs->c.zero_state[256-j]= 256-fs->c.one_state [j];
            }
        }
    }

    return 0;
}

static av_cold int init_slice_contexts(FFV1Context *f){
    int i;

    f->slice_count= f->num_h_slices * f->num_v_slices;

    for(i=0; i<f->slice_count; i++){
        FFV1Context *fs= av_mallocz(sizeof(*fs));
        int sx= i % f->num_h_slices;
        int sy= i / f->num_h_slices;
        int sxs= f->avctx->width * sx    / f->num_h_slices;
        int sxe= f->avctx->width *(sx+1) / f->num_h_slices;
        int sys= f->avctx->height* sy    / f->num_v_slices;
        int sye= f->avctx->height*(sy+1) / f->num_v_slices;
        f->slice_context[i]= fs;
        memcpy(fs, f, sizeof(*fs));

        fs->slice_width = sxe - sxs;
        fs->slice_height= sye - sys;
        fs->slice_x     = sxs;
        fs->slice_y     = sys;

        fs->sample_buffer = av_malloc(6 * (fs->width+6) * sizeof(*fs->sample_buffer));
        if (!fs->sample_buffer)
            return AVERROR(ENOMEM);
    }
    return 0;
}

#if CONFIG_FFV1_ENCODER
static int write_extra_header(FFV1Context *f){
    RangeCoder * const c= &f->c;
    uint8_t state[CONTEXT_SIZE];
    int i;
    memset(state, 128, sizeof(state));

    f->avctx->extradata= av_malloc(f->avctx->extradata_size= 10000);
    ff_init_range_encoder(c, f->avctx->extradata, f->avctx->extradata_size);
    ff_build_rac_states(c, 0.05*(1LL<<32), 256-8);

    put_symbol(c, state, f->version, 0);
    put_symbol(c, state, f->ac, 0);
    if(f->ac>1){
        for(i=1; i<256; i++){
            f->state_transition[i]=ver2_state[i];
            put_symbol(c, state, ver2_state[i] - c->one_state[i], 1);
        }
    }
    put_symbol(c, state, f->colorspace, 0); //YUV cs type
    put_symbol(c, state, f->avctx->bits_per_raw_sample, 0);
    put_rac(c, state, 1); //chroma planes
        put_symbol(c, state, f->chroma_h_shift, 0);
        put_symbol(c, state, f->chroma_v_shift, 0);
    put_rac(c, state, 0); //no transparency plane
    put_symbol(c, state, f->num_h_slices-1, 0);
    put_symbol(c, state, f->num_v_slices-1, 0);

    put_symbol(c, state, f->quant_table_count, 0);
    for(i=0; i<f->quant_table_count; i++)
        write_quant_tables(c, f->quant_tables[i]);

    f->avctx->extradata_size= ff_rac_terminate(c);

    return 0;
}

static av_cold int encode_init(AVCodecContext *avctx)
{
    FFV1Context *s = avctx->priv_data;
    int i;

    common_init(avctx);

    s->version=0;
    s->ac= avctx->coder_type ? 2:0;

    s->plane_count=2;
    for(i=0; i<256; i++){
        s->quant_table_count=2;
        if(avctx->bits_per_raw_sample <=8){
            s->quant_tables[0][0][i]=           quant11[i];
            s->quant_tables[0][1][i]=        11*quant11[i];
            s->quant_tables[0][2][i]=     11*11*quant11[i];
            s->quant_tables[1][0][i]=           quant11[i];
            s->quant_tables[1][1][i]=        11*quant11[i];
            s->quant_tables[1][2][i]=     11*11*quant5 [i];
            s->quant_tables[1][3][i]=   5*11*11*quant5 [i];
            s->quant_tables[1][4][i]= 5*5*11*11*quant5 [i];
        }else{
            s->quant_tables[0][0][i]=           quant9_10bit[i];
            s->quant_tables[0][1][i]=        11*quant9_10bit[i];
            s->quant_tables[0][2][i]=     11*11*quant9_10bit[i];
            s->quant_tables[1][0][i]=           quant9_10bit[i];
            s->quant_tables[1][1][i]=        11*quant9_10bit[i];
            s->quant_tables[1][2][i]=     11*11*quant5_10bit[i];
            s->quant_tables[1][3][i]=   5*11*11*quant5_10bit[i];
            s->quant_tables[1][4][i]= 5*5*11*11*quant5_10bit[i];
        }
    }
    memcpy(s->quant_table, s->quant_tables[avctx->context_model], sizeof(s->quant_table));

    for(i=0; i<s->plane_count; i++){
        PlaneContext * const p= &s->plane[i];

        memcpy(p->quant_table, s->quant_table, sizeof(p->quant_table));
        if(avctx->context_model==0){
            p->context_count= (11*11*11+1)/2;
        }else{
            p->context_count= (11*11*5*5*5+1)/2;
        }
    }

    avctx->coded_frame= &s->picture;
    switch(avctx->pix_fmt){
    case PIX_FMT_YUV444P16:
    case PIX_FMT_YUV422P16:
    case PIX_FMT_YUV420P16:
        if(avctx->bits_per_raw_sample <=8){
            av_log(avctx, AV_LOG_ERROR, "bits_per_raw_sample invalid\n");
            return -1;
        }
        if(!s->ac){
            av_log(avctx, AV_LOG_ERROR, "bits_per_raw_sample of more than 8 needs -coder 1 currently\n");
            return -1;
        }
        s->version= FFMAX(s->version, 1);
    case PIX_FMT_YUV444P:
    case PIX_FMT_YUV422P:
    case PIX_FMT_YUV420P:
    case PIX_FMT_YUV411P:
    case PIX_FMT_YUV410P:
        s->colorspace= 0;
        break;
    case PIX_FMT_RGB32:
        s->colorspace= 1;
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "format not supported\n");
        return -1;
    }
    avcodec_get_chroma_sub_sample(avctx->pix_fmt, &s->chroma_h_shift, &s->chroma_v_shift);

    s->picture_number=0;

    if(s->version>1){
        s->num_h_slices=2;
        s->num_v_slices=2;
        write_extra_header(s);
    }

    if(init_slice_contexts(s) < 0)
        return -1;
    if(init_slice_state(s) < 0)
        return -1;

    return 0;
}
#endif /* CONFIG_FFV1_ENCODER */


static void clear_state(FFV1Context *f){
    int i, si, j;

    for(si=0; si<f->slice_count; si++){
        FFV1Context *fs= f->slice_context[si];
        for(i=0; i<f->plane_count; i++){
            PlaneContext *p= &fs->plane[i];

            p->interlace_bit_state[0]= 128;
            p->interlace_bit_state[1]= 128;

            for(j=0; j<p->context_count; j++){
                if(fs->ac){
                    memset(p->state[j], 128, sizeof(uint8_t)*CONTEXT_SIZE);
                }else{
                    p->vlc_state[j].drift= 0;
                    p->vlc_state[j].error_sum= 4; //FFMAX((RANGE + 32)/64, 2);
                    p->vlc_state[j].bias= 0;
                    p->vlc_state[j].count= 1;
                }
            }
        }
    }
}

#if CONFIG_FFV1_ENCODER
static int encode_slice(AVCodecContext *c, void *arg){
    FFV1Context *fs= *(void**)arg;
    FFV1Context *f= fs->avctx->priv_data;
    int width = fs->slice_width;
    int height= fs->slice_height;
    int x= fs->slice_x;
    int y= fs->slice_y;
    AVFrame * const p= &f->picture;

    if(f->colorspace==0){
        const int chroma_width = -((-width )>>f->chroma_h_shift);
        const int chroma_height= -((-height)>>f->chroma_v_shift);
        const int cx= x>>f->chroma_h_shift;
        const int cy= y>>f->chroma_v_shift;

        encode_plane(fs, p->data[0] + x + y*p->linesize[0], width, height, p->linesize[0], 0);

        encode_plane(fs, p->data[1] + cx+cy*p->linesize[1], chroma_width, chroma_height, p->linesize[1], 1);
        encode_plane(fs, p->data[2] + cx+cy*p->linesize[2], chroma_width, chroma_height, p->linesize[2], 1);
    }else{
        encode_rgb_frame(fs, (uint32_t*)(p->data[0]) + x + y*(p->linesize[0]/4), width, height, p->linesize[0]/4);
    }
    emms_c();

    return 0;
}

static int encode_frame(AVCodecContext *avctx, unsigned char *buf, int buf_size, void *data){
    FFV1Context *f = avctx->priv_data;
    RangeCoder * const c= &f->slice_context[0]->c;
    AVFrame *pict = data;
    AVFrame * const p= &f->picture;
    int used_count= 0;
    uint8_t keystate=128;
    uint8_t *buf_p;
    int i;

    ff_init_range_encoder(c, buf, buf_size);
    ff_build_rac_states(c, 0.05*(1LL<<32), 256-8);

    *p = *pict;
    p->pict_type= FF_I_TYPE;

    if(avctx->gop_size==0 || f->picture_number % avctx->gop_size == 0){
        put_rac(c, &keystate, 1);
        p->key_frame= 1;
        write_header(f);
        clear_state(f);
    }else{
        put_rac(c, &keystate, 0);
        p->key_frame= 0;
    }

    if(!f->ac){
        used_count += ff_rac_terminate(c);
//printf("pos=%d\n", used_count);
        init_put_bits(&f->slice_context[0]->pb, buf + used_count, buf_size - used_count);
    }else if (f->ac>1){
        int i;
        for(i=1; i<256; i++){
            c->one_state[i]= f->state_transition[i];
            c->zero_state[256-i]= 256-c->one_state[i];
        }
    }

    for(i=1; i<f->slice_count; i++){
        FFV1Context *fs= f->slice_context[i];
        uint8_t *start= buf + (buf_size-used_count)*i/f->slice_count;
        int len= buf_size/f->slice_count;

        if(fs->ac){
            ff_init_range_encoder(&fs->c, start, len);
        }else{
            init_put_bits(&fs->pb, start, len);
        }
    }
    avctx->execute(avctx, encode_slice, &f->slice_context[0], NULL, f->slice_count, sizeof(void*));

    buf_p=buf;
    for(i=0; i<f->slice_count; i++){
        FFV1Context *fs= f->slice_context[i];
        int bytes;

        if(fs->ac){
            uint8_t state=128;
            put_rac(&fs->c, &state, 0);
            bytes= ff_rac_terminate(&fs->c);
        }else{
            flush_put_bits(&fs->pb); //nicer padding FIXME
            bytes= used_count + (put_bits_count(&fs->pb)+7)/8;
            used_count= 0;
        }
        if(i>0){
            av_assert0(bytes < buf_size/f->slice_count);
            memmove(buf_p, fs->ac ? fs->c.bytestream_start : fs->pb.buf, bytes);
            av_assert0(bytes < (1<<24));
            AV_WB24(buf_p+bytes, bytes);
            bytes+=3;
        }
        buf_p += bytes;
    }

    f->picture_number++;
    return buf_p-buf;
}
#endif /* CONFIG_FFV1_ENCODER */

static av_cold int common_end(AVCodecContext *avctx){
    FFV1Context *s = avctx->priv_data;
    int i, j;

    for(j=0; j<s->slice_count; j++){
        FFV1Context *fs= s->slice_context[j];
        for(i=0; i<s->plane_count; i++){
            PlaneContext *p= &fs->plane[i];

            av_freep(&p->state);
            av_freep(&p->vlc_state);
        }
        av_freep(&fs->sample_buffer);
    }

    return 0;
}

static av_always_inline void decode_line(FFV1Context *s, int w, int_fast16_t *sample[2], int plane_index, int bits){
    PlaneContext * const p= &s->plane[plane_index];
    RangeCoder * const c= &s->c;
    int x;
    int run_count=0;
    int run_mode=0;
    int run_index= s->run_index;

    for(x=0; x<w; x++){
        int diff, context, sign;

        context= get_context(p, sample[1] + x, sample[0] + x, sample[1] + x);
        if(context < 0){
            context= -context;
            sign=1;
        }else
            sign=0;

        av_assert2(context < p->context_count);

        if(s->ac){
            diff= get_symbol_inline(c, p->state[context], 1);
        }else{
            if(context == 0 && run_mode==0) run_mode=1;

            if(run_mode){
                if(run_count==0 && run_mode==1){
                    if(get_bits1(&s->gb)){
                        run_count = 1<<ff_log2_run[run_index];
                        if(x + run_count <= w) run_index++;
                    }else{
                        if(ff_log2_run[run_index]) run_count = get_bits(&s->gb, ff_log2_run[run_index]);
                        else run_count=0;
                        if(run_index) run_index--;
                        run_mode=2;
                    }
                }
                run_count--;
                if(run_count < 0){
                    run_mode=0;
                    run_count=0;
                    diff= get_vlc_symbol(&s->gb, &p->vlc_state[context], bits);
                    if(diff>=0) diff++;
                }else
                    diff=0;
            }else
                diff= get_vlc_symbol(&s->gb, &p->vlc_state[context], bits);

//            printf("count:%d index:%d, mode:%d, x:%d y:%d pos:%d\n", run_count, run_index, run_mode, x, y, get_bits_count(&s->gb));
        }

        if(sign) diff= -diff;

        sample[1][x]= (predict(sample[1] + x, sample[0] + x) + diff) & ((1<<bits)-1);
    }
    s->run_index= run_index;
}

static void decode_plane(FFV1Context *s, uint8_t *src, int w, int h, int stride, int plane_index){
    int x, y;
    int_fast16_t *sample[2];
    sample[0]=s->sample_buffer    +3;
    sample[1]=s->sample_buffer+w+6+3;

    s->run_index=0;

    memset(s->sample_buffer, 0, 2*(w+6)*sizeof(*s->sample_buffer));

    for(y=0; y<h; y++){
        int_fast16_t *temp= sample[0]; //FIXME try a normal buffer

        sample[0]= sample[1];
        sample[1]= temp;

        sample[1][-1]= sample[0][0  ];
        sample[0][ w]= sample[0][w-1];

//{START_TIMER
        if(s->avctx->bits_per_raw_sample <= 8){
            decode_line(s, w, sample, plane_index, 8);
            for(x=0; x<w; x++){
                src[x + stride*y]= sample[1][x];
            }
        }else{
            decode_line(s, w, sample, plane_index, s->avctx->bits_per_raw_sample);
            for(x=0; x<w; x++){
                ((uint16_t*)(src + stride*y))[x]= sample[1][x] << (16 - s->avctx->bits_per_raw_sample);
            }
        }
//STOP_TIMER("decode-line")}
    }
}

static void decode_rgb_frame(FFV1Context *s, uint32_t *src, int w, int h, int stride){
    int x, y, p;
    int_fast16_t *sample[3][2];
    for(x=0; x<3; x++){
        sample[x][0] = s->sample_buffer +  x*2   *(w+6) + 3;
        sample[x][1] = s->sample_buffer + (x*2+1)*(w+6) + 3;
    }

    s->run_index=0;

    memset(s->sample_buffer, 0, 6*(w+6)*sizeof(*s->sample_buffer));

    for(y=0; y<h; y++){
        for(p=0; p<3; p++){
            int_fast16_t *temp= sample[p][0]; //FIXME try a normal buffer

            sample[p][0]= sample[p][1];
            sample[p][1]= temp;

            sample[p][1][-1]= sample[p][0][0  ];
            sample[p][0][ w]= sample[p][0][w-1];
            decode_line(s, w, sample[p], FFMIN(p, 1), 9);
        }
        for(x=0; x<w; x++){
            int g= sample[0][1][x];
            int b= sample[1][1][x];
            int r= sample[2][1][x];

//            assert(g>=0 && b>=0 && r>=0);
//            assert(g<256 && b<512 && r<512);

            b -= 0x100;
            r -= 0x100;
            g -= (b + r)>>2;
            b += g;
            r += g;

            src[x + stride*y]= b + (g<<8) + (r<<16) + (0xFF<<24);
        }
    }
}

static int decode_slice(AVCodecContext *c, void *arg){
    FFV1Context *fs= *(void**)arg;
    FFV1Context *f= fs->avctx->priv_data;
    int width = fs->slice_width;
    int height= fs->slice_height;
    int x= fs->slice_x;
    int y= fs->slice_y;
    AVFrame * const p= &f->picture;

    av_assert1(width && height);
    if(f->colorspace==0){
        const int chroma_width = -((-width )>>f->chroma_h_shift);
        const int chroma_height= -((-height)>>f->chroma_v_shift);
        const int cx= x>>f->chroma_h_shift;
        const int cy= y>>f->chroma_v_shift;
        decode_plane(fs, p->data[0] + x + y*p->linesize[0], width, height, p->linesize[0], 0);

        decode_plane(fs, p->data[1] + cx+cy*p->linesize[1], chroma_width, chroma_height, p->linesize[1], 1);
        decode_plane(fs, p->data[2] + cx+cy*p->linesize[1], chroma_width, chroma_height, p->linesize[2], 1);
    }else{
        decode_rgb_frame(fs, (uint32_t*)p->data[0] + x + y*(p->linesize[0]/4), width, height, p->linesize[0]/4);
    }

    emms_c();

    return 0;
}

static int read_quant_table(RangeCoder *c, int16_t *quant_table, int scale){
    int v;
    int i=0;
    uint8_t state[CONTEXT_SIZE];

    memset(state, 128, sizeof(state));

    for(v=0; i<128 ; v++){
        int len= get_symbol(c, state, 0) + 1;

        if(len + i > 128) return -1;

        while(len--){
            quant_table[i] = scale*v;
            i++;
//printf("%2d ",v);
//if(i%16==0) printf("\n");
        }
    }

    for(i=1; i<128; i++){
        quant_table[256-i]= -quant_table[i];
    }
    quant_table[128]= -quant_table[127];

    return 2*v - 1;
}

static int read_quant_tables(RangeCoder *c, int16_t quant_table[MAX_CONTEXT_INPUTS][256]){
    int i;
    int context_count=1;

    for(i=0; i<5; i++){
        context_count*= read_quant_table(c, quant_table[i], context_count);
        if(context_count > 32768U){
            return -1;
        }
    }
    return (context_count+1)/2;
}

static int read_extra_header(FFV1Context *f){
    RangeCoder * const c= &f->c;
    uint8_t state[CONTEXT_SIZE];
    int i;

    memset(state, 128, sizeof(state));

    ff_init_range_decoder(c, f->avctx->extradata, f->avctx->extradata_size);
    ff_build_rac_states(c, 0.05*(1LL<<32), 256-8);

    f->version= get_symbol(c, state, 0);
    f->ac= f->avctx->coder_type= get_symbol(c, state, 0);
    if(f->ac>1){
        for(i=1; i<256; i++){
            f->state_transition[i]= get_symbol(c, state, 1) + c->one_state[i];
        }
    }
    f->colorspace= get_symbol(c, state, 0); //YUV cs type
    f->avctx->bits_per_raw_sample= get_symbol(c, state, 0);
    get_rac(c, state); //no chroma = false
    f->chroma_h_shift= get_symbol(c, state, 0);
    f->chroma_v_shift= get_symbol(c, state, 0);
    get_rac(c, state); //transparency plane
    f->plane_count= 2;
    f->num_h_slices= 1 + get_symbol(c, state, 0);
    f->num_v_slices= 1 + get_symbol(c, state, 0);
    if(f->num_h_slices > (unsigned)f->width || f->num_v_slices > (unsigned)f->height){
        av_log(f->avctx, AV_LOG_ERROR, "too many slices\n");
        return -1;
    }

    f->quant_table_count= get_symbol(c, state, 0);
    if(f->quant_table_count > (unsigned)MAX_QUANT_TABLES)
        return -1;
    for(i=0; i<f->quant_table_count; i++){
        if((f->context_count[i]= read_quant_tables(c, f->quant_tables[i])) < 0){
            av_log(f->avctx, AV_LOG_ERROR, "read_quant_table error\n");
            return -1;
        }
    }

    return 0;
}

static int read_header(FFV1Context *f){
    uint8_t state[CONTEXT_SIZE];
    int i, j, context_count;
    RangeCoder * const c= &f->slice_context[0]->c;

    memset(state, 128, sizeof(state));

    if(f->version < 2){
        f->version= get_symbol(c, state, 0);
        f->ac= f->avctx->coder_type= get_symbol(c, state, 0);
        if(f->ac>1){
            for(i=1; i<256; i++){
                f->state_transition[i]= get_symbol(c, state, 1) + c->one_state[i];
            }
        }
        f->colorspace= get_symbol(c, state, 0); //YUV cs type
        if(f->version>0)
            f->avctx->bits_per_raw_sample= get_symbol(c, state, 0);
        get_rac(c, state); //no chroma = false
        f->chroma_h_shift= get_symbol(c, state, 0);
        f->chroma_v_shift= get_symbol(c, state, 0);
        get_rac(c, state); //transparency plane
        f->plane_count= 2;
    }

    if(f->colorspace==0){
        if(f->avctx->bits_per_raw_sample<=8){
            switch(16*f->chroma_h_shift + f->chroma_v_shift){
            case 0x00: f->avctx->pix_fmt= PIX_FMT_YUV444P; break;
            case 0x10: f->avctx->pix_fmt= PIX_FMT_YUV422P; break;
            case 0x11: f->avctx->pix_fmt= PIX_FMT_YUV420P; break;
            case 0x20: f->avctx->pix_fmt= PIX_FMT_YUV411P; break;
            case 0x22: f->avctx->pix_fmt= PIX_FMT_YUV410P; break;
            default:
                av_log(f->avctx, AV_LOG_ERROR, "format not supported\n");
                return -1;
            }
        }else{
            switch(16*f->chroma_h_shift + f->chroma_v_shift){
            case 0x00: f->avctx->pix_fmt= PIX_FMT_YUV444P16; break;
            case 0x10: f->avctx->pix_fmt= PIX_FMT_YUV422P16; break;
            case 0x11: f->avctx->pix_fmt= PIX_FMT_YUV420P16; break;
            default:
                av_log(f->avctx, AV_LOG_ERROR, "format not supported\n");
                return -1;
            }
        }
    }else if(f->colorspace==1){
        if(f->chroma_h_shift || f->chroma_v_shift){
            av_log(f->avctx, AV_LOG_ERROR, "chroma subsampling not supported in this colorspace\n");
            return -1;
        }
        f->avctx->pix_fmt= PIX_FMT_RGB32;
    }else{
        av_log(f->avctx, AV_LOG_ERROR, "colorspace not supported\n");
        return -1;
    }

//printf("%d %d %d\n", f->chroma_h_shift, f->chroma_v_shift,f->avctx->pix_fmt);
    if(f->version < 2){
        context_count= read_quant_tables(c, f->quant_table);
        if(context_count < 0){
                av_log(f->avctx, AV_LOG_ERROR, "read_quant_table error\n");
                return -1;
        }
    }else{
        f->slice_count= get_symbol(c, state, 0);
        if(f->slice_count > (unsigned)MAX_SLICES)
            return -1;
    }

    for(j=0; j<f->slice_count; j++){
        FFV1Context *fs= f->slice_context[j];
        fs->ac= f->ac;

        if(f->version >= 2){
            fs->slice_x     = get_symbol(c, state, 0)   *f->width ;
            fs->slice_y     = get_symbol(c, state, 0)   *f->height;
            fs->slice_width =(get_symbol(c, state, 0)+1)*f->width  + fs->slice_x;
            fs->slice_height=(get_symbol(c, state, 0)+1)*f->height + fs->slice_y;

            fs->slice_x /= f->num_h_slices;
            fs->slice_y /= f->num_v_slices;
            fs->slice_width  = fs->slice_width /f->num_h_slices - fs->slice_x;
            fs->slice_height = fs->slice_height/f->num_v_slices - fs->slice_y;
            if((unsigned)fs->slice_width > f->width || (unsigned)fs->slice_height > f->height)
                return -1;
            if(    (unsigned)fs->slice_x + (uint64_t)fs->slice_width  > f->width
                || (unsigned)fs->slice_y + (uint64_t)fs->slice_height > f->height)
                return -1;
        }

        for(i=0; i<f->plane_count; i++){
            PlaneContext * const p= &fs->plane[i];

            if(f->version >= 2){
                int idx=get_symbol(c, state, 0);
                if(idx > (unsigned)f->quant_table_count){
                    av_log(f->avctx, AV_LOG_ERROR, "quant_table_index out of range\n");
                    return -1;
                }
                memcpy(p->quant_table, f->quant_tables[idx], sizeof(p->quant_table));
                context_count= f->context_count[idx];
            }else{
                memcpy(p->quant_table, f->quant_table, sizeof(p->quant_table));
            }

            if(p->context_count < context_count){
                av_freep(&p->state);
                av_freep(&p->vlc_state);
            }
            p->context_count= context_count;
        }
    }

    return 0;
}

static av_cold int decode_init(AVCodecContext *avctx)
{
    FFV1Context *f = avctx->priv_data;

    common_init(avctx);

    if(avctx->extradata && read_extra_header(f) < 0)
        return -1;

    if(init_slice_contexts(f) < 0)
        return -1;

    return 0;
}

static int decode_frame(AVCodecContext *avctx, void *data, int *data_size, AVPacket *avpkt){
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    FFV1Context *f = avctx->priv_data;
    RangeCoder * const c= &f->slice_context[0]->c;
    AVFrame * const p= &f->picture;
    int bytes_read, i;
    uint8_t keystate= 128;
    const uint8_t *buf_p;

    AVFrame *picture = data;

    ff_init_range_decoder(c, buf, buf_size);
    ff_build_rac_states(c, 0.05*(1LL<<32), 256-8);


    p->pict_type= FF_I_TYPE; //FIXME I vs. P
    if(get_rac(c, &keystate)){
        p->key_frame= 1;
        if(read_header(f) < 0)
            return -1;
        if(init_slice_state(f) < 0)
            return -1;

        clear_state(f);
    }else{
        p->key_frame= 0;
    }
    if(f->ac>1){
        int i;
        for(i=1; i<256; i++){
            c->one_state[i]= f->state_transition[i];
            c->zero_state[256-i]= 256-c->one_state[i];
        }
    }

    p->reference= 0;
    if(avctx->get_buffer(avctx, p) < 0){
        av_log(avctx, AV_LOG_ERROR, "get_buffer() failed\n");
        return -1;
    }

    if(avctx->debug&FF_DEBUG_PICT_INFO)
        av_log(avctx, AV_LOG_ERROR, "keyframe:%d coder:%d\n", p->key_frame, f->ac);

    if(!f->ac){
        bytes_read = c->bytestream - c->bytestream_start - 1;
        if(bytes_read ==0) av_log(avctx, AV_LOG_ERROR, "error at end of AC stream\n"); //FIXME
//printf("pos=%d\n", bytes_read);
        init_get_bits(&f->slice_context[0]->gb, buf + bytes_read, buf_size - bytes_read);
    } else {
        bytes_read = 0; /* avoid warning */
    }

    buf_p= buf + buf_size;
    for(i=f->slice_count-1; i>0; i--){
        FFV1Context *fs= f->slice_context[i];
        int v= AV_RB24(buf_p-3)+3;
        if(buf_p - buf <= v){
            av_log(avctx, AV_LOG_ERROR, "Slice pointer chain broken\n");
            return -1;
        }
        buf_p -= v;
        if(fs->ac){
            ff_init_range_decoder(&fs->c, buf_p, v);
        }else{
            init_get_bits(&fs->gb, buf_p, v);
        }
    }

    avctx->execute(avctx, decode_slice, &f->slice_context[0], NULL, f->slice_count, sizeof(void*));
    f->picture_number++;

    *picture= *p;

    avctx->release_buffer(avctx, p); //FIXME

    *data_size = sizeof(AVFrame);

    return buf_size;
}

AVCodec ffv1_decoder = {
    "ffv1",
    AVMEDIA_TYPE_VIDEO,
    CODEC_ID_FFV1,
    sizeof(FFV1Context),
    decode_init,
    NULL,
    common_end,
    decode_frame,
    CODEC_CAP_DR1 /*| CODEC_CAP_DRAW_HORIZ_BAND*/,
    NULL,
    .long_name= NULL_IF_CONFIG_SMALL("FFmpeg video codec #1"),
};

#if CONFIG_FFV1_ENCODER
AVCodec ffv1_encoder = {
    "ffv1",
    AVMEDIA_TYPE_VIDEO,
    CODEC_ID_FFV1,
    sizeof(FFV1Context),
    encode_init,
    encode_frame,
    common_end,
    .pix_fmts= (const enum PixelFormat[]){PIX_FMT_YUV420P, PIX_FMT_YUV444P, PIX_FMT_YUV422P, PIX_FMT_YUV411P, PIX_FMT_YUV410P, PIX_FMT_RGB32, PIX_FMT_YUV420P16, PIX_FMT_YUV422P16, PIX_FMT_YUV444P16, PIX_FMT_NONE},
    .long_name= NULL_IF_CONFIG_SMALL("FFmpeg video codec #1"),
};
#endif
