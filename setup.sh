#!/bin/sh

#building darknet : Darknet source code is already included as a part of my repo
git clone https://github.com/AlexeyAB/darknet.git
cd darknet
sed -i 's/OPENCV=0/OPENCV=1/' Makefile
sed -i 's/GPU=0/GPU=1/' Makefile
sed -i 's/CUDNN=0/CUDNN=1/' Makefile

make 

cd ..


mkdir mask_no-mask_dataset
cd mask_no-mask_dataset

wget "https://www.dropbox.com/s/uq0x32w70c390fb/mask_no-mask_dataset.zip?dl=1" -O mask_no-mask_dataset.zip
unzip mask_no-mask_dataset.zip &> /dev/null
cd ..

cd test
wget "https://www.dropbox.com/s/pds0w3z5y7w89oz/test-video1.mp4?dl=1" -O ./test-video1.mp4
wget "https://www.dropbox.com/s/sqwu0ktdtlxtdsd/test-video2.mp4?dl=1" -O ./test-video2.mp4
cd ..
