#!/bin/sh


cd yolov3/
mkdir maskbackup
mkdir output
wget "https://www.dropbox.com/s/18dwbfth7prbf0h/darknet53.conv.74?dl=1" -O darknet53.conv.74
./../darknet/darknet detector train yolov3-mask-setup.data yolov3-mask-train.cfg ./darknet53.conv.74 -dont_show -map 2> train_log.txt
./test.sh
