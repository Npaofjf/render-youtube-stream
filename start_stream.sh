#!/bin/bash
while true; do
  echo "Starting stream..."
  ffmpeg -re -stream_loop -1 -i "https://drive.google.com/uc?export=download&id=${DRIVE_FILE_ID}" \
  -c copy -f flv "rtmp://a.rtmp.youtube.com/live2/${YOUTUBE_STREAM_KEY}"
  echo "Stream ended — restarting in 10 seconds..."
  sleep 10
done
