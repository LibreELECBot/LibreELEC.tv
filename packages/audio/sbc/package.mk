################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016-present Team LibreELEC
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
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

PKG_NAME="sbc"
PKG_VERSION="1.3"
PKG_SHA256="4a358581fb57b98e0c1c34606a35343f31f908f57c26659e51495f75e283785d"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.bluez.org/"
PKG_URL="http://www.kernel.org/pub/linux/bluetooth/sbc-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="network"
PKG_SHORTDESC="sbc: standalone SBC library"
PKG_LONGDESC="standalone SBC library"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-static \
                           --disable-shared \
                           --disable-tools \
                           --disable-tester"

pre_configure_target() {
  CFLAGS="$CFLAGS -fPIC"
}
