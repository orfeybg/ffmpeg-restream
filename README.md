# ffmpeg-restream
#My first script for restream rstp ip cammera signal to website.

#camera1.sh - is ffmpeg restreming bash script per camera
#startscreen.sh - is bash for start many cameras, and clear hdd space directory, and check if ffmpeg run.
#chekcameri.sh - is bash for check all cameras is on or off


#Before start script need to be install:

ffmpeg ( for 28.10.2017 version is ffmpeg version 3.3.4-1~16.04.york0 ) 

Installing Nginx and Nginx-RTMP

Install the tools required to compile Nginx and Nginx-RTMP from source.

sudo apt-get install build-essential libpcre3 libpcre3-dev libssl-dev

Install nginx-extras

sudo apt-get install nginx-extras

Add in nginx.conf file

 location / {
            root   html;
            index  index.html index.htm;
            add_header Access-Control-Allow-Origin *;

Install screen 

sudo apt-get install screen

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


#new info add 28.03.2018

Add new file timedif.sh


-remove chekcameri.sh


-add crontab changes

#*/5 * * * * /livestream/chekcameri.sh > /dev/null 2>&1


*/5 * * * * /livestream/timedif.sh > /dev/null 2>&1


#add timelapse scripts 2019 / i get help from script for this man https://superuser.com/users/466879/rus-ti

create new directory
timelapse

create subdirectory
media and scripts


make bash script with camera name
camera1timelaps.sh

create script for generate movie from images
generate-movie.sh
