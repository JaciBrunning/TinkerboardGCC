#!/bin/sh

brew install wget binutils gnu-tar coreutils@8.27
brew install gcc@6

gcp --help

zsh download.sh
zsh repack.sh

# echo alias ar=gar
echo alias tar=gtar

cd mac
make sysroot
sudo gcp sysroot-install/usr/local/* /usr/local/ -r
make binutils
sudo gcp binutils-install/usr/local/* /usr/local/ -r

make gcc gdb tree pkg tarpkg

