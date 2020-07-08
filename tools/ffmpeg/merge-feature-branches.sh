#!/bin/sh

# useage: merge-feature-branches [--rpi]

pull() {
  git pull --no-ff --log "$@"
}

pull https://github.com/xbmc/FFmpeg.git 4.3-Matrix-Alpha1
pull https://github.com/lrusak/FFmpeg.git v4l2-drmprime-v5
pull https://github.com/Kwiboo/FFmpeg.git v4l2-request-hwaccel-4.3
pull https://github.com/LibreELEC/FFmpeg.git 4.3-libreelec-misc

if [ "$1" = "--rpi" ]; then
  pull https://github.com/jc-kynesim/rpi-ffmpeg.git test/4.3/kodi_main
fi
