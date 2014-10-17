#!/usr/bin/env bash

if [[ 1==1 ]]; then
  file=$1
  file_name=${file%.*}

  ffmpeg -i $1 -vcodec copy -acodec copy $file_name.mp4 -f null /dev/null

  echo ' Processing is complete'
fi

# http://stackoverflow.com/questions/20323640/ffmpeg-deocde-without-producing-output-file