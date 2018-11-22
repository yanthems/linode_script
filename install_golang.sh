#!/bin/sh

# work in ~/

wget https://dl.google.com/go/go1.11.2.linux-amd64.tar.gz

tar -zxf go1.11.2.linux-amd64.tar.gz

mv go /usr/share/

mkdir go

cat <<EOF >> ~/.bashrc

export GOROOT=/usr/share/go
export PATH=$GOROOT/bin:$PATH
export GOPATH=~/go

EOF

. ~/.bashrc

go version
