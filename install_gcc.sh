#!/bin/sh

#8.2.0
#7.3.0

wget http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-7.3.0/gcc-7.3.0.tar.gz

tar -zxf gcc-7.3.0.tar.gz

cd gcc-7.3.0.tar.gz

#下载依赖
./contrib/download_prerequisites 

mkdir build-gcc-7.3.0

cd build-gcc-7.3.0

../configure --enable-checking=release --enable-languages=c,c++ --disable-multilib 

#make -j2

make 

#make install

apt remove gcc

apt-get autoremove

make install

gcc --version

#If you ever happen to want to link against installed libraries
#in a given directory, LIBDIR, you must either use libtool, and
#specify the full pathname of the library, or use the `-LLIBDIR'
#flag during linking and do at least one of the following:
#   - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
#     during execution
#   - add LIBDIR to the `LD_RUN_PATH' environment variable
#     during linking
#   - use the `-Wl,-rpath -Wl,LIBDIR' linker flag
#   - have your system administrator add LIBDIR to `/etc/ld.so.conf'
#
#See any operating system documentation about shared libraries for
#more information, such as the ld(1) and ld.so(8) manual pages.

apt-add-repository ppa:ubuntu-toolchain-r/test

apt-get update

apt-get install -f

apt-get upgrade
