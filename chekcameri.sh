#!/bin/bash

#shell script for watch ffmpeg proces

pidcam1=$(cat /livestream/pids/camera1)

if ps -p $pidcam1 > /dev/null
then
    echo "camera 1 active"
else
    echo "start camera1"
sleep 10
screen -Sdm camera1  /livestream/camera1.sh &
screen -list | grep camera1 | cut -f1 -d'.' | sed 's/\W//g'  >  /livestream/pids/camera1
echo "Camera 1 is Online"
fi
