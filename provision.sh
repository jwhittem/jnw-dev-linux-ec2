#!/bin/bash

sudo sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
sudo apt update && sudo apt upgrade -y
sudo apt-get install -y git vim
sudo apt-get -y build-dep linux linux-image-$(uname -r)
sudo apt-get install -y libncurses-dev gawk flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf fakeroot
sudo apt-get -y source linux-image-unsigned-$(uname -r)
