###############################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2014 Gordon Hollingworth (gordon@fiveninjas.com)
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

PKG_NAME="led_tools"
PKG_VERSION="0.1"
PKG_SHA256="0484b4a2da9d586accef87ba7dd18595baae1d602c1b1bd9e0a8565ab50419a2"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.fiveninjas.com"
PKG_URL="http://updates.fiveninjas.com/src/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain zlib libpng slice-addon"
PKG_DEPENDS_HOST="toolchain"
PKG_SHORTDESC="led_tools"
PKG_LONGDESC="LED tools, these are a set of tools to control the LEDs on Slice"

make_target() {
  make CC="$CC" \
       CFLAGS="$CFLAGS" \
       LDFLAGS="$LDFLAGS"
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
    cp led_png $INSTALL/usr/bin
}
