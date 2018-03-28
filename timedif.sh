#!/bin/bash
#
# Проверка кога е последния запис от камерата и ако няма никакво движение в последните 10 мин, рестартира процеса наново
# Check output camera directory for when last change file if there is a 10-minute difference 
#
#
#


pidcam1=$(cat /home/cameri/livecam/pids/camera1)



camera1=$(stat -c %Y /var/www/html/livecam/media/camera1)


newseconds=$(date +%s)


if (((newseconds - camer1) / 60)) ; then
    echo "This directory have more than 10 min"
    sleep 2
    echo "kill process"
    kill -9 $pidcam1
    sleep 2
    echo "Clear directory"
    sleep 2
    find /var/www/html/livecam/media/camera1/ -type f -exec rm {} \;
    echo "Start camera camera1"
    screen -Sdm camera1  /home/cameri/livecam/camera1.sh &
    screen -list | grep camera1 | cut -f1 -d'.' | sed 's/\W//g'  >  /home/cameri/livecam/pids/camera1
    echo "Camera camera1 e startirana"
fi
