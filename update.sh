#!/bin/sh

wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.15/linux-image-4.15.0-041500-generic_4.15.0-041500.201802011154_amd64.deb

dpkg -i linux-image-4.*.deb

apt-get install linux-image-virtual grub2

update-grub

reboot
