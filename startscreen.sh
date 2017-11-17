#!/bin/bash

if pgrep -x "ffmpeg" > /dev/null
then
    echo "Some camera work. Chek who..."
sleep 5
/livestream/chekcameri.sh

else
    echo "Stopped"
sleep 5
echo "Start Cleart HDD"
echo "Stop all cameras"
killall -TERM screen
sleep 5
echo "Clear hdd"
/livestream/clearhdd.sh
echo "Start all Cameras"
echo "Start camera 1"
sleep 5
screen -Sdm camera1 /livestream/camera1.sh &
sleep 5
screen -list | grep camera1 | cut -f1 -d'.' | sed 's/\W//g' >  /livestream/pids/camera1
echo "Finish all Cameras"
fi

