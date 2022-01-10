#!/bin/bash

sudo sed -i '/^#\sdeb-src /s/^#//' /etc/apt/sources.list
sudo apt-get -y build-dep linux linux-image-$(uname -r)
sudo apt-get install -y git vim dpkg-dev flex bison libncurses-dev \
gawk flex dwarves bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf fakeroot
