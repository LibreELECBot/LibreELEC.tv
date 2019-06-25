#!/bin/sh

CURRENT_IMG=$1
UPGRADE_IMG=$2

RPI_REVISION=$(hexdump -ve '1/1 "%.2x"' </proc/device-tree/system/linux,revision)
RPI_CPU=${RPI_REVISION:4:1}

if echo $CURRENT_IMG | grep -qE "^RPi[0-9]?+\..*"; then
  if  [ $RPI_CPU = "3" ]; then
    exit 0
  else
    echo "ERROR: canupdate.sh: cpu unsupported by $UPGRADE_IMG image - not a BCM2838?"
    exit 1
  fi
else
  echo "ERROR: canupdate.sh: current platform not a Raspberry Pi?"
  exit 1
fi
