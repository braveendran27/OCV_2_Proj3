#!/bin/sh


cd yolov4/
mkdir maskbackup
mkdir output
wget "https://drive.google.com/open?id=1JKF-bdIklxOOVy-2Cr5qdvjgGpmGfcbp" -O yolov4.conv.137
./../darknet/darknet detector train yolov4-mask-setup.data yolov4-obj.cfg ./yolov4.conv.137 -dont_show -map 2> train_log.txt
./test.sh



