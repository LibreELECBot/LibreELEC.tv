################################################################################
#      This file is part of LibreELEC - https://LibreELEC.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libcec"
PKG_VERSION=""
PKG_REV="1"
PKG_ARCH="arm"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL=""
PKG_PRIORITY="optional"
PKG_SECTION="virtual"
PKG_SHORTDESC="libcec: Metapackage to choose correct libcec version."
PKG_LONGDESC="libcec: Metapackage to choose correct libcec version."
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

if [ "$LIBCEC_TYPE" = "xbian" -a "$LINUX" = "imx6-4.4-xbian" ]; then
  PKG_DIR=$ROOT/projects/$PROJECT/packages/libcec-xbian
  . $PKG_DIR/package.mk
else
  # find default one from packages folder
  _ALL_DIRS=""
  _FOUND=0
  PKG_DIR=""
  for DIR in $(find $ROOT/$PACKAGES -type d -name $PKG_NAME 2>/dev/null); do
    if [ -r "$DIR/package.mk" ]; then
      # found first, set $PKG_DIR
      PKG_DIR="$DIR"
      # keep track of dirs with package.mk for detecting multiple folders
      _ALL_DIRS="${_ALL_DIRS}${DIR}\\n"
      _FOUND=$((_FOUND+1))
      if [ $_FOUND -gt 1 ]; then
        # found more ? fail
        echo "Error - multiple package folders:"
        echo -e "$_ALL_DIRS"
        exit 1
      fi
    fi
  done

  if [ -n "$PKG_DIR" ]; then
    . $PKG_DIR/package.mk
  fi
fi
