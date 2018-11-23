#!/bin/sh

wget http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-8.2.0/gcc-8.2.0.tar.gz

tar -zxf gcc-8.2.0.tar.gz

cd gcc-8.2.0.tar.gz

#下载依赖
./contrib/download_prerequisites 

mkdir build-gcc-8.2.0

cd build-gcc-8.2.0

../configure --enable-checking=release --enable-languages=c,c++ --disable-multilib 

#make -j2

make 

#make install

apt remove gcc

apt-get autoremove

make install

gcc --version

