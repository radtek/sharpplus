export PKG_CONFIG_PATH="/local/lib/pkgconfig"
./configure --enable-shared --disable-static --enable-libvpx --enable-librtmp --enable-memalign-hack --target-os=mingw32 --enable-avisynth --enable-libopenjpeg --enable-gpl --enable-version3 --enable-zlib --enable-bzlib --enable-libgsm --enable-libfaac --enable-libfaad --enable-pthreads --enable-libvorbis --enable-nonfree --enable-libtheora --enable-libspeex --enable-libmp3lame --enable-libxvid --enable-libschroedinger --enable-libx264 --enable-libnut --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-avfilter --enable-avfilter_lavf --enable-runtime-cpudetect --extra-cflags="-fno-common" --extra-cflags=-I/local/include --extra-ldflags=-L/local/lib