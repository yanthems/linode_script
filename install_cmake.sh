#!/bin/sh

wget https://github.com/Kitware/CMake/releases/download/v3.13.0/cmake-3.13.0-Linux-x86_64.tar.gz

tar -zxf cmake-3.13.0-Linux-x86_64.tar.gz

mv cmake-3.13.0-Linux-x86_64 cmake-3.13

mv cmake-3.13 /usr/local/share/

cat <<EOF >> ~/.bashrc

export CMAKE_ROOT=/usr/local/share/cmake-3.13
export PATH=\$CMAKE_ROOT/bin:\$PATH

EOF

source ~/.bashrc

cmake --version
