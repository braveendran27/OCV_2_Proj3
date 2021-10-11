#!/bin/sh

./../darknet/darknet detector test yolov4-mask-setup.data yolov4-test.cfg ./maskbackup/yolov4-obj_best.weights ./../test/test-image1.jpg -thresh .6 -dont_show
mv  predictions.jpg ./output/test-image1_pred.jpg

./../darknet/darknet detector test yolov4-mask-setup.data yolov4-test.cfg ./maskbackup/yolov4-obj_best.weights ./../test/test-image2.jpg -thresh .6 -dont_show
mv  predictions.jpg ./output/test-image2_pred.jpg

./../darknet/darknet detector test yolov4-mask-setup.data yolov4-test.cfg ./maskbackup/yolov4-obj_best.weights ./../test/test-image3.jpg -thresh .6 -dont_show
mv  predictions.jpg ./output/test-image3_pred.jpg

./../darknet/darknet detector test yolov4-mask-setup.data yolov4-test.cfg ./maskbackup/yolov4-obj_best.weights ./../test/test-image4.jpg -thresh .6 -dont_show
mv  predictions.jpg ./output/test-image4_pred.jpg

./../darknet/darknet detector demo yolov4-mask-setup.data yolov4-test.cfg ./maskbackup/yolov4-obj_best.weights ./../test/test-video1.mp4 -thresh .6 -out_filename ./output/out-vid1.avi -dont_show


./../darknet/darknet detector demo yolov4-mask-setup.data yolov4-test.cfg ./maskbackup/yolov4-obj_best.weights ./../test/test-video2.mp4 -thresh .6 -out_filename ./output/out-vid2.avi -dont_show


