#!/bin/sh

# useage: merge-feature-branches [--rpi]

merge() {
  git fetch $1 $2
  git merge --no-ff --log FETCH_HEAD
}

merge https://github.com/xbmc/FFmpeg.git 4.3-Matrix-Alpha1
merge https://github.com/lrusak/FFmpeg.git v4l2-drmprime-v5
merge https://github.com/Kwiboo/FFmpeg.git v4l2-request-hwaccel-4.3
merge https://github.com/LibreELEC/FFmpeg.git 4.3-libreelec-misc

if [ "$1" = "--rpi" ]; then
  merge https://github.com/jc-kynesim/rpi-ffmpeg.git test/4.3/kodi_main
fi
