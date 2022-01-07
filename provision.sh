#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt-get install git vim
sudo apt-get build-dep linux linux-image-$(uname -r) -y
