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
#include "libavutil/lfg.h"
#include "parseutils.h"
#include "wm.h"
#include "dct.h"
#include "signature.h"

extern int n_signature;
extern int nbit_signature;
extern int n_signature1;
extern int nbit_signature1;
extern int n_signature2;
extern int nbit_signature2;

extern char signature[NSIGNATURE];
extern char signature1[NSIGNATURE];
extern char signature2[NSIGNATURE];

#define FORWARD_STEP(A) ((1.0 + A) / (1.0 - A))
#define BACKWARD_STEP(A) ((1.0 - A) / (1.0 + A))

typedef struct
{
    int enc; //0:decode 1:encode
	char sig_file[1024];//signature file
    double alpha ;
	double beta;
    double gamma ;
	int    seed;
	AVLFG  rnd;
} WatermarkContext;

static av_cold int init(AVFilterContext *ctx, const char *args, void *opaque)
{
    WatermarkContext *context= ctx->priv;
	FILE *sig = NULL;

    if(!args || strlen(args) > 1024) {
        av_log(ctx, AV_LOG_ERROR, "Invalid arguments!\n");
        return -1;
    }

	context->beta = 0.0;

    sscanf(args, "%d:%s", &(context->enc), &(context->sig_file[0]));

	//read sigature file to get parameters
	if ((sig = fopen(&context->sig_file[0], "r")) == NULL) {
       av_log(NULL,AV_LOG_ERROR, "unable to open signature file %s\n", &context->sig_file[0]);
       return 1;
    }

    {
		char line[32];
		fgets(line, sizeof(line), sig);

		if (strspn(line, "FR2SG") >= 5) {
          if (context->enc)
          {
			  fscanf(sig, "%d\n", &nbit_signature);
			  fscanf(sig, "%lf\n", &context->alpha);
			  fscanf(sig, "%lf\n", &context->gamma);
			  fscanf(sig, "%d\n", &context->seed);
			  n_signature = NBITSTOBYTES(nbit_signature);
			  fread(signature, sizeof(char), n_signature, sig);
			  fscanf(sig, "\n");
		  }
		  else{
			  fscanf(sig, "%d\n", &nbit_signature1);
			  fscanf(sig, "%lf\n", &context->alpha);
			  fscanf(sig, "%*lf\n");
			  fscanf(sig, "%d\n", &context->seed);
			  n_signature1 = NBITSTOBYTES(nbit_signature1);
			  fread(signature1, sizeof(char), n_signature1, sig);
			  fscanf(sig, "\n");
		  }
		  av_lfg_init(&context->rnd, context->seed);
		}
		else {
		  av_log(NULL,AV_LOG_ERROR, "invalid signature file %s\n", &context->sig_file[0]);
		  return (1);
		}
		fclose(sig);
    }


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
#if 0
    WatermarkContext *context = link->dst->priv;
#endif
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

void embed_low_freq(double **dcts, int cols, int rows, double alpha, int verbose) {
  int n;
  int row, col, dir;

  n = 0;
  row = col = 0;
  dir = 1;
  while (n < nbit_signature) {
    double d, x;
    int embed;
    int out;

    col -= dir;
    row += dir;
    if (col < 0) { dir = -1; col = 0; }
    if (col >= cols) { dir = 1; col = cols - 1; row += 2; }
    if (row < 0) { dir = 1; row = 0; }
    if (row >= rows) { dir = -1; row = rows - 1; col += 2; }

    d = dcts[row][col];
    if (fabs(d) <= 1.0) {
      if (verbose > 3)
        av_log(NULL,AV_LOG_ERROR, "bit #%d - skipped (%d/%d)\n", n, col, row);
      continue;
    }

    embed = 2 * get_signature_bit(n) - 1;

    x = (d > 0.0) ? 1.0 : -1.0;
    out = 1;
    while (fabs(x) < fabs(d)) {
      x *= FORWARD_STEP(alpha);
      out =- out;
    }

    if (out != embed) {
      if (fabs(d - x) < fabs(d - x * BACKWARD_STEP(alpha)))
        x *= FORWARD_STEP(alpha);
      else
        x *= BACKWARD_STEP(alpha);        
    }

    d =  (x + x * BACKWARD_STEP(alpha)) / 2.0;

    if (verbose > 3)
      av_log(NULL,AV_LOG_ERROR, "embedding bit #%d (= %d) at (%d/%d): %f -> %f\n", n, get_signature_bit(n), col, row, dcts[row][col], d);

    dcts[row][col] = d;

    n++;
  }  
}        

void embed_med_freq(double **dcts, int cols, int rows, WatermarkContext* context, int verbose) {
  // select mid-frequency (30%) coefficients
  int start = (int) (0.35 * rows * cols + 0.5);
  int end = (int) (0.65 * rows * cols + 0.5);

  double *vector;
  int x = 0, y = 0, dir = 1;
  int i, j;    

  vector = av_malloc((end - start) * sizeof(double));
  for (i = 0; i < (end - start); i++)
    vector[i] = 0.0;
        
  // create pseudo-random vector
  av_lfg_init(&context->rnd, context->seed);
  for (i = 0; i < nbit_signature; i++) {
    if (get_signature_bit(i))
      av_lfg_get(&context->rnd);
    for (j = 0; j < (end - start); j++)
      vector[j] += (double) (av_lfg_get(&context->rnd) & RAND_MAX) / (double) RAND_MAX - 0.5;
    if (!get_signature_bit(i))
      av_lfg_get(&context->rnd);
  }

  for (i = 0; i < (end - start); i++)
    vector[i] /= sqrt(nbit_signature);

  for (i = 0; i < end; i++) {
    // zig-zag scan
    x -= dir;
    y += dir;
    if (x < 0) { dir = -1; x = 0; }
    if (x >= cols) { dir = 1; x = cols - 1; y += 2; }
    if (y < 0) { dir = 1; y = 0; }
    if (y >= rows) { dir = -1; y = rows - 1; x += 2; }

    // embed vector
    if ((i - start) >= 0) {
//      av_log(NULL, AV_LOG_ERROR, "%d/%d: %f -> %f\n", x, y, dcts[y][x], dcts[y][x] + gamma * vector[i - start]);
      dcts[y][x] += context->gamma * vector[i - start];
    }
  }        

  av_free(vector);
}

double detect_low_freq(double **dcts, int cols, int rows, WatermarkContext* context, int verbose) {
  int n;
  int row, col, dir;
  double sum1, sum2;

  n = 0;
  row = col = 0;
  dir = 1;
  sum1 = sum2 = 0.0;
  while (n < nbit_signature1) {
    double d, x;
    int detect;
    int out;

    col -= dir;
    row += dir;
    if (col < 0) { dir = -1; col = 0; }
    if (col >= cols) { dir = 1; col = cols - 1; row += 2; }
    if (row < 0) { dir = 1; row = 0; }
    if (row >= rows) { dir = -1; row = rows - 1; col += 2; }

    d = dcts[row][col];
    if (fabs(d) <= 1.0) {
      if (verbose > 3)
        av_log(NULL,AV_LOG_ERROR, "bit #%d - skipped (%d/%d)\n", n, col, row);
      continue;
    }

    detect = 2 * get_signature1_bit(n) - 1;

    x = (d > 0.0) ? 1.0 : -1.0;
    out = 1;
    while (fabs(x) < fabs(d)) {
      x *= FORWARD_STEP(context->alpha);
      out =- out;
    }

    if (verbose > 3)
      av_log(NULL,AV_LOG_ERROR, "detected bit #%d (= %d) at (%d/%d): %f\n", n, out > 0 ? 1 : 0, col, row, d);

    set_signature2_bit(n, out > 0 ? 1 : 0);
    sum1 += pow(fabs(d), context->beta) * out * detect;
    sum2 += pow(fabs(d), context->beta);

    n++;
  }  

  return sum1 / sum2;
}

double detect_med_freq(double **dcts, int cols, int rows, WatermarkContext* context, int verbose) {
  int i, j, k;
  int start= (int) (0.35 * rows * cols + 0.5);
  int end = (int) (.65 * rows * cols + 0.5);

  int sum, sum1, sum2;
  int x = 0, y = 0, dir = 1;
  double *vector;
  int startx, starty, startdir;
  double corr[2];
  double correlation;

  // locate start positions 
  for (i = 0; i < start; i++) {
    x -= dir;
    y += dir;
    if (x < 0) { dir = -1; x = 0; }
    if (x >= cols) { dir = 1; x = cols - 1; y += 2; }
    if (y < 0) { dir = 1; y = 0; }
    if (y >= rows) { dir = -1; y = rows - 1; x += 2; }
  }		

  // save start positions
  startx = x;		
  starty = y;
  startdir = dir;
  av_lfg_init(&context->rnd, context->seed);

  vector = av_malloc((end - start) * sizeof(double));

  for (i = 0; i < nbit_signature1; i++) {

    for (j = 0; j <= (end - start); j++)
      vector[j] = (double) (av_lfg_get(&context->rnd) & RAND_MAX) / (double) RAND_MAX - 0.5;
				
    for (j = 0; j <= 1; j++) {
      x = startx;
      y = starty;
      dir = startdir;
      corr[j] = 0;

      for (k = 0; start + k < end; k++) {   
        x -= dir;
        y += dir;
        if (x < 0) { dir = -1; x = 0; }
        if (x >= cols) { dir = 1; x = cols - 1; y += 2; }
        if (y < 0) { dir = 1; y = 0; }
        if (y >= rows) { dir = -1; y = rows - 1; x += 2; }
        corr[j] += dcts[y][x] * vector[k + j];
      }
    }	

    set_signature2_bit(i,  (corr[0] >= corr[1]) ? 0 : 1);
  }

  sum = 0; sum1 = 0; sum2 = 0;
  for (i = 0; i < nbit_signature1; i++) {
    sum += get_signature1_bit(i) * get_signature2_bit(i);
    sum1 += get_signature1_bit(i) *  get_signature1_bit(i);
    sum2 += get_signature2_bit(i) * get_signature2_bit(i);
  }
  correlation = (double) sum / (sqrt(sum1) * sqrt(sum2));

  return correlation;		
}


static void encode_watermark(AVFilterPicRef *pic, WatermarkContext* context)
{
    int row, col;

	gray *image;
	double **coeffs;
    double normalization = 1024.0;

	double mean, derivation;
	double mult_factor;

	int rows, cols;
	int verbose = 0;

    rows = pic->h;
	cols = pic->w;

	if (rows == cols)
	  init_dct_NxN(cols, rows);
	else
	  init_dct_NxM(cols, rows);

	image = pic->data[0];

	// calculate mean value
	mean = 0.0;
	for (row = 0; row < rows; row++)
	  for (col = 0; col < cols; col++)
	    mean += image[row*cols + col];

	mean /= cols * rows;

	// calculate derivation
	derivation = 0.0;
	for (row = 0; row < rows; row++)
	  for (col = 0; col < cols; col++)
	    derivation += sqr(image[row*cols + col] - mean);

	derivation = sqrt(derivation / (cols * rows - 1));
	mult_factor = normalization / (sqrt(cols * rows) * derivation); 

	// normalize image
	coeffs = alloc_coeffs(cols, rows);
	for (row = 0; row < rows; row++)
	  for (col = 0; col < cols; col++)
	    coeffs[row][col] = (image[row*cols + col] - mean) * mult_factor;

	if (cols == rows)
	  fdct_inplace_NxN(coeffs);
//  else
//    fdct_NxM(image, dcts);    

	embed_low_freq(coeffs, cols, rows, context->alpha, verbose);
	embed_med_freq(coeffs, cols, rows, context, verbose);

	if (cols == rows)
	  idct_inplace_NxN(coeffs);
	//  else
	//    idct_NxM(dcts, image);

	for (row = 0; row < rows; row++)
	  for (col = 0; col < cols; col++)
	    image[row*cols + col] = PIXELRANGE(coeffs[row][col] / mult_factor + mean + 0.5);

	free_coeffs(coeffs);
#if 0
    for (y = 0; y < pic->h; y++) {
        row = pic->data[0] + y * pic->linesize[0];

        for (x = 0; x < pic->w; x++)
                row[x] = 0x52;
    }
#endif
}

static void decode_watermark(AVFilterPicRef *pic, WatermarkContext* context)
{
    int row, col;

	gray *image;
	double **coeffs;
    double normalization = 1024.0;
	double correlation;

	double mean, derivation;
	double mult_factor;

	int rows, cols;
	int verbose = 0;

    rows = pic->h;
	cols = pic->w;

	image = pic->data[0];
	// calculate mean malue
	mean = 0.0;
	for (row = 0; row < rows; row++) 
	  for (col = 0; col < cols; col++)
	    mean += image[row*cols + col];

	mean /=  cols * rows;

	// calculate derivation
	derivation = 0.0;
	for (row = 0; row < rows; row++) 
	  for (col = 0; col < cols; col++)
	    derivation += sqr(image[row*cols + col] - mean);

	derivation = sqrt(derivation / (cols * rows - 1));
	mult_factor = normalization / (sqrt(cols * rows) * derivation); 

	// normalize image
	coeffs = alloc_coeffs(cols, rows);
	for (row = 0; row < rows; row++) 
	  for (col = 0; col < cols; col++)
	    coeffs[row][col] = (image[row*cols + col] - mean) * mult_factor;

	if (rows == cols) {
	  init_dct_NxN(cols, rows);
	  fdct_inplace_NxN(coeffs);
	}
	//  else {
	//    init_dct_NxM(cols, rows);
	//    fdct_NxM(coeffs);
	//  }

	//fprintf(out, "FR2WM\n");

	av_log(NULL, AV_LOG_ERROR, "%d\n", nbit_signature1);
	correlation = detect_low_freq(coeffs, cols, rows, context, verbose);
	//if (verbose > 2)
		av_log(NULL, AV_LOG_ERROR, "low_freq correlation: %f\n", correlation);
	//fwrite(signature2, sizeof(char), NBITSTOBYTES(nbit_signature1), out);
	av_log(NULL, AV_LOG_ERROR, "\n");

	av_log(NULL, AV_LOG_ERROR, "%d\n", nbit_signature1);
	correlation = detect_med_freq(coeffs, cols, rows, context, verbose);
	//if (verbose > 2)
		av_log(NULL, AV_LOG_ERROR, "med_freq correlation: %f\n", correlation);
	//fwrite(signature2, sizeof(char), NBITSTOBYTES(nbit_signature1), out);
	av_log(NULL, AV_LOG_ERROR, "\n");

	//fclose(out);

}

static void end_frame(AVFilterLink *link)
{
    WatermarkContext *context = link->dst->priv;
    AVFilterLink *output = link->dst->outputs[0];
    AVFilterPicRef *pic = link->cur_pic;

	if (context->enc)
	{
	    encode_watermark(pic,context);
	}
	else{
	    decode_watermark(pic,context);
	}


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
