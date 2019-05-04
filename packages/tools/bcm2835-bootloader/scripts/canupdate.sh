#!/bin/sh

# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

# Verify update image compatibility with Raspberry Pi hardware

UPGRADE_IMG=$2

substring_test() {
# check string $1 for substring $2
  $(echo "$1" | grep -qE "$2")
  return $?
}

RPI_MODEL=$(cat /proc/device-tree/model)

if [ "${RPI_MODEL:0:12}" != "Raspberry Pi" ]; then
  echo "ERROR: canupdate.sh aborted - not a Raspberry Pi device?"
  exit 1
fi

# Test for Compute Module else standard Pi
if [ ${RPI_MODEL:13:1} = "C" ]; then
  # Set "Raspberry Pi Compute Module 3 (...)" to "Compute Module 3"
  # Test if CM3 else CM1
  if [ ${RPI_MODEL:28:1} -a ${RPI_MODEL:28:1} = "3" ]; then
    RPI_MODEL="Compute Module 3"
  else
    RPI_MODEL="Compute Module 1"
  fi
else
  # Reduce "Raspberry Pi 3 Model B (...)" to "Raspberry Pi 3"
  RPI_MODEL=${RPI_MODEL:0:14}
fi

if substring_test $UPGRADE_IMG "^RPi.\.*" && [ ${RPI_MODEL:0:1} = "R" ]; then
  # Reduce "Raspberry Pi 3" to "3"
  case ${RPI_MODEL:(-1)} in
    # RPi 3
    3)
      COMPATIBLE_IMG="RPi3.arm RPi2.arm RPi.arm"
      substring_test "$COMPATIBLE_IMG" $UPGRADE_IMG && exit 0 || exit 1
      ;;
    # RPi 2
    2)
      COMPATIBLE_IMG="RPi2.arm RPi.arm"
      substring_test "$COMPATIBLE_IMG" $UPGRADE_IMG && exit 0 || exit 1
      ;;
    # RPi 1
    M)
      [ $UPGRADE_IMG = "RPi.arm" ] && exit 0 || exit 1
      ;;
    *)
      echo "ERROR: canupdate.sh aborted - device model not recognized to pass compatibility check"
      exit 1
      ;;
  esac
# Slice image for Compute Module
elif substring_test $UPGRADE_IMG "^Slice.\.*" && [ ${RPI_MODEL:0:1} = "C" ]; then
  case ${RPI_MODEL:(-1)} in
    3)
      COMPATIBLE_IMG="Slice3.arm Slice.arm"
      substring_test "$COMPATIBLE_IMG" $UPGRADE_IMG && exit 0 || exit 1
      ;;
    1)
      [ $UPGRADE_IMG = "Slice.arm" ] && exit 0 || exit 1
      ;;
    *)
      echo "ERROR: canupdate.sh aborted - device model not recognized to pass compatibility check"
      exit 1
      ;;
  esac
else
  echo "ERROR: canupdate.sh aborted - wrong update image for device?"
  exit 1
fi
