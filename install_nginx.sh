#!/bin/sh

wget https://nginx.org/download/nginx-1.15.6.tar.gz

tar -zxf nginx-1.15.6.tar.gz

cd nginx-1.15.6.tar.gz

git clone https://github.com/arut/nginx-rtmp-module.git

/usr/local/bin/gcc -s /usr/local/bin/cc

apt install libpcre3

apt install libpcre3-dev

apt install libssl-dev

#./configure --add-module=./nginx-rtmp-module

./configure --add-module=./nginx-rtmp-module --with-cc-opt="-Wimplicit-fallthrough=0"

make

make install


cat <<EOF >> ~/.bashrc

export NGINX_ROOT=/usr/local/nginx
export PATH=\$PATH:\$NGINX_ROOT/sbin

EOF

source ~.bashrc
