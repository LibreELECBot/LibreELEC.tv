################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libdvdread"
PKG_VERSION=`git ls-remote git://github.com/xbmc/libdvdread | grep refs/heads/master | cut -c1-7`
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/xbmc/libdvdread"
PKG_URL="https://github.com/xbmc/libdvdread/archive/master.tar.gz"
PKG_DEPENDS_TARGET="toolchain libdvdcss"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="libdvdread: a library which provides a simple foundation for reading DVDs."
PKG_LONGDESC="libdvdread is a library which provides a simple foundation for reading DVDs."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--disable-static --with-libdvdcss"

pre_configure_target() {
  export CFLAGS="-D_XBMC $CFLAGS"
}

unpack() {
  tar xzf "$SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz" -C $BUILD
  mv $BUILD/$PKG_NAME-* $BUILD/$PKG_NAME-${PKG_VERSION}
}
