#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt-get install -y git vim
sudo apt-get -y build-dep linux linux-image-$(uname -r)
sudo apt-get install -y libncurses-dev gawk flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf fakeroot

wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.170.tar.xz
tar xf linux-5.4.170.tar.xz
cd linux-5.4.170
export CPU_COUNT=`cat /proc/cpuinfo | grep proc | wc -l`
make tinyconfig
time make -j$CPU_COUNT
