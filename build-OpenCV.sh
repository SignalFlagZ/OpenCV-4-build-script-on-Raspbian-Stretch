#!/bin/bash
# Nov. 1 2016
# Signal Flag "Z"
# https://signal-flag-z.blogspot.com/
# Copyright (c) 2019, Signal Flag "Z"  All rights reserved.

user=`whoami`
echo 'Your Name :' ${user}

echo -e '\n----------'
echo 'Update repository'
sudo apt update
sudo apt -y upgrade

echo -e '\n----------'
echo 'Update libraries'
sudo apt-get install -y build-essential cmake unzip pkg-config
sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libgtk-3-dev
sudo apt-get install -y libcanberra-gtk*
sudo apt-get install -y libatlas-base-dev gfortran

echo -e '\n----------'
echo 'Get OpenCV from git.'
cd ~/Downloads/
git clone --depth 1 --branch 4.0.1 https://github.com/opencv/opencv.git
git clone --depth 1 --branch 4.0.1 https://github.com/opencv/opencv_contrib.git

echo -e '\n----------'
echo 'Install virtualenv.'
sudo pip install virtualenv virtualenvwrapper
sudo pip3 install virtualenv virtualenvwrapper

echo -e '\n----------'
echo 'Modify profile.'
sed -i.bak -e "/# virtualenv and virtualenvwrapper/d" ~/.profile
sed -i -e "$ a # virtualenv and virtualenvwrapper" ~/.profile
sed -i -e "/export WORKON_HOME=\$HOME\/.virtualenvs/d" ~/.profile
sed -i -e "$ a export WORKON_HOME=\$HOME\/.virtualenvs" ~/.profile
sed -i -e "/export VIRTUALENVWRAPPER_PYTHON=\/usr\/bin\/python3/d" ~/.profile
sed -i -e "$ a export VIRTUALENVWRAPPER_PYTHON=\/usr\/bin\/python3" ~/.profile
sed -i -e "/source \/usr\/local\/bin\/virtualenvwrapper.sh/d" ~/.profile
sed -i -e "$ a source \/usr\/local\/bin\/virtualenvwrapper.sh" ~/.profile

echo -e '\n----------'
echo 'Make virtualenv.'
source ~/.profile
mkvirtualenv cv -p python3
workon cv
