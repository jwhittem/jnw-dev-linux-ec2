#!/bin/bash

sudo sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
sudo apt update && sudo apt upgrade -y
sudo apt-get install git vim
sudo apt-get build-dep linux linux-image-$(uname -r) -y
