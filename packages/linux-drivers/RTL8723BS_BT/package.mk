################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016-2017 Team LibreELEC
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

PKG_NAME="RTL8723BS_BT"
PKG_VERSION="ed8dddc7"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/sorhtyre/rtl8723bs_bt"
PKG_URL="https://github.com/sorhtyre/rtl8723bs_bt/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="rtl8723bs_bt-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain linux"
PKG_NEED_UNPACK="$LINUX_DEPENDS"
PKG_SECTION="driver"
PKG_SHORTDESC="Realtek SDIO Wi-Fi Linux 4.x driver"
PKG_LONGDESC="Realtek SDIO Wi-Fi Linux 4.x driver"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_make_target() {
  unset LDFLAGS
}

make_target() {
  make V=1 \
       ARCH=$TARGET_KERNEL_ARCH \
       KSRC=$(kernel_path) \
       CROSS_COMPILE=$TARGET_PREFIX \
       CONFIG_POWER_SAVING=n
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/firmware/rtl_bt
    cp -p firmware/rtl8723bs_btcnfg.bin $INSTALL/usr/lib/firmware/rtl_bt
    cp -p firmware/rtl8723bs_btfw.bin $INSTALL/usr/lib/firmware/rtl_bt

  mkdir -p $INSTALL/usr/bin
    cp rtk_hciattach $INSTALL/usr/bin
    cp start_bt.sh $INSTALL/usr/bin
}

post_install() {
  enable_service rtk_bt.service
}
