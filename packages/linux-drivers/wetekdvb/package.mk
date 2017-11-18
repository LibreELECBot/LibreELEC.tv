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

PKG_NAME="wetekdvb"
PKG_VERSION="20170404"
PKG_SHA256="6fb718425bdd9a3bb68966a5033233cb2c2d5d7b41579309f7f7370ff41aaf40"
PKG_ARCH="arm aarch64"
PKG_LICENSE="nonfree"
PKG_SITE="http://www.wetek.com/"
PKG_URL="$DISTRO_SRC/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain linux"
PKG_NEED_UNPACK="$LINUX_DEPENDS"
PKG_SECTION="driver"
PKG_SHORTDESC="wetekdvb: Wetek DVB driver"
PKG_LONGDESC="These package contains Wetek's DVB driver "
PKG_AUTORECONF="no"
PKG_IS_KERNEL_PKG="yes"

make_target() {
  : # nothing todo
}

makeinstall_target() {
  mkdir -p $INSTALL/$(get_full_module_dir)/$PKG_NAME
  if [ $PROJECT = "WeTek_Play_2" ]; then
    cp driver/wetekdvb_play2.ko $INSTALL/$(get_full_module_dir)/$PKG_NAME/wetekdvb.ko
  else
    cp driver/wetekdvb.ko $INSTALL/$(get_full_module_dir)/$PKG_NAME
  fi

  mkdir -p $INSTALL/$(get_full_firmware_dir)
    cp firmware/* $INSTALL/$(get_full_firmware_dir)
}
