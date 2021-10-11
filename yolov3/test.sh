#!/bin/sh

./../darknet/darknet detector test yolov3-mask-setup.data yolov3-mask-test.cfg ./maskbackup/yolov3-mask-train_best.weights ./../test/test-image1.jpg -thresh .6 -dont_show 2>/dev/null 
mv  predictions.jpg ./output/test-image1_pred.jpg

./../darknet/darknet detector test yolov3-mask-setup.data yolov3-mask-test.cfg ./maskbackup/yolov3-mask-train_best.weights ./../test/test-image2.jpg -thresh .6 -dont_show 2>/dev/null 
mv  predictions.jpg ./output/test-image2_pred.jpg

./../darknet/darknet detector test yolov3-mask-setup.data yolov3-mask-test.cfg ./maskbackup/yolov3-mask-train_best.weights ./../test/test-image3.jpg -thresh .6 -dont_show 2>/dev/null 
mv  predictions.jpg ./output/test-image3_pred.jpg

./../darknet/darknet detector test yolov3-mask-setup.data yolov3-mask-test.cfg ./maskbackup/yolov3-mask-train_best.weights ./../test/test-image4.jpg -thresh .6 -dont_show 2>/dev/null 
mv  predictions.jpg ./output/test-image4_pred.jpg

./../darknet/darknet detector demo yolov3-mask-setup.data yolov3-mask-test.cfg ./maskbackup/yolov3-mask-train_best.weights ./../test/test-video1.mp4 -thresh .6 -out_filename ./output/out-vid1.avi -dont_show


./../darknet/darknet detector demo yolov3-mask-setup.data yolov3-mask-test.cfg ./maskbackup/yolov3-mask-train_best.weights ./../test/test-video2.mp4 -thresh .6 -out_filename ./output/out-vid2.avi -dont_show


