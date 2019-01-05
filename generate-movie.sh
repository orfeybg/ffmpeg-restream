#!/bin/bash

# TimeLapse footage creation script.

# This script should take any stills in the incoming Stills directory and
# compile them into a .mp4 file in the Movies directory.
# Then moved the 'processed' stills into a timestamped directory the
# Processed directory.

time=`date '+%Y_%m_%d__%H_%M_%S'`;
source="/livecam/timelapse/media"

for CameraName in `ls $source/Stills/`; do

# If the Movies directory for $CameraName doesn't exist, make it.
   mkdir -p /livecam/timelapse/media/Movies/$CameraName

# Make the movie in the Movie directory using the stills from the Stills directory
   ffmpeg -framerate 10/1 -pattern_type glob -i "$source/Stills/$CameraName/*.png" -vf fps=30 -c:v libx264 -pix_fmt yuv420p $source/Movies/$CameraName/$CameraName-$time.mp4



# Make the Processed directory for $CameraName if it doesn't already exist
   mkdir -p /livecam/timelapse/media/Processed/$CameraName
# Make the timestamped directory for the stills to be moved into
   mkdir -p /livecam/timelapse/media/Processed/$CameraName/$time
# Move the stills
   mv $source/Stills/$CameraName/*.png $source/Processed/$CameraName/$time/

done
