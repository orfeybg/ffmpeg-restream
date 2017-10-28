# ffmpeg-restream
#My first script for restream rstp ip cammera signal to website.

#camera1.sh - is ffmpeg restreming bash script per camera
#startscreen.sh - is bash for start many cameras, and clear hdd space directory, and check if ffmpeg run.
#chekcameri.sh - is bash for check all cameras is on or off


#Before start script need to be install:

ffmpeg ( for 28.10.2017 version is ffmpeg version 3.3.4-1~16.04.york0 ) 

nginx

screen

#step by step

#First create directory for shell script.

mkdir livestream
cd livestream

#make amother directory

mkdir pids

#make amother directory

mkdir jpegs

#make amother directory

mkdir media



#firt chek script camera1.sh is work normaly 
#if all is ok you can start startscreen.sh

#you can make crontab to check cameri every 5 min
*/5 * * * * /livestream/chekcameri.sh > /dev/null 2>&1


