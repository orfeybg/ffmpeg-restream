#! /bin/bash
#
# ffmpeg-restreaming by orfeybg@abv.bg




SOURCE="rtsp://user:pass@domain:port"  # Source


ffmpeg \
    -rtsp_transport tcp -i "$SOURCE"  \
    -acodec libmp3lame -ar 44100 -b:a 128k -hls_time 20 -hls_list_size 20 -hls_wrap 30 -start_number 1 -c copy \
    /output.m3u8
