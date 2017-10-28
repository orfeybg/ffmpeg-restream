#!/bin/sh
 echo "Its Full. Start Clean"
find /media/ -type f -exec rm {} \;
echo "Its done"