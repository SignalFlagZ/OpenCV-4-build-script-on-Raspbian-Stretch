#!/bin/bash
# Nov. 1 2016
# Signal Flag "Z"
# https://signal-flag-z.blogspot.com/
# Copyright (c) 2019, Signal Flag "Z"  All rights reserved.

user=`whoami`
echo 'Your Name :' ${user}

sudo apt update
sudo apt -y upgrade

sudo apt-get install -y build-essential cmake unzip pkg-config
sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libgtk-3-dev
sudo apt-get install -y libcanberra-gtk*
sudo apt-get install -y libatlas-base-dev gfortran

cd ~/Downloads/
git clone --depth 1 --branch 4.0.1 https://github.com/opencv/opencv.git
git clone --depth 1 --branch 4.0.1 https://github.com/opencv/opencv_contrib.git
