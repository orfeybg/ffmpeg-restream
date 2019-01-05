#!/bin/bash

# TimeLapse snapshot capture script.

# This script should capture any stills in the incoming Stills directory

time=`date '+%Y_%m_%d__%H_%M_%S'`;

# Specific for each camera
stream='rtsp://all-url'

#camera Name
CameraName=no-interval-here-on-name-of-camera

#storage
StorageFilename=$CameraName-$time.png

# Shouldn't need to be changed!
StorageDirectory=/livecam/timelapse/media/Stills
StorageFilename=$CameraName-$time.png

mkdir -p $StorageDirectory/$CameraName;


#script

ffmpeg -rtsp_transport tcp -i $stream -ss 00:00:01.50 -vframes 1 $StorageDirectory/$CameraName/$StorageFilename -nostats -hide_banner -v 0 -loglevel quiet
