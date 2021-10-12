#!/bin/sh


cd yolov4/
mkdir maskbackup
mkdir output

fileid="1JKF-bdIklxOOVy-2Cr5qdvjgGpmGfcbp"
filename="yolov4.conv.137"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
#wget "https://drive.google.com/u/0/open?id=1JKF-bdIklxOOVy-2Cr5qdvjgGpmGfcbp" -O yolov4.conv.137
./../darknet/darknet detector train yolov4-mask-setup.data yolov4-obj.cfg ./yolov4.conv.137 -dont_show -map 2> train_log.txt
./test.sh



