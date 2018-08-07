# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="digital_devices"
PKG_VERSION="033432c"
PKG_SHA256="38b60e9455d6d400fe06351b3e9e57d41a8826135146dc243008e9792bfafa2a"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/DigitalDevices/dddvb/"
PKG_URL="https://github.com/DigitalDevices/dddvb/archive/${PKG_VERSION}.tar.gz"
PKG_SOURCE_DIR="dddvb-${PKG_VERSION}*"
PKG_DEPENDS_TARGET="toolchain linux"
PKG_BUILD_DEPENDS_TARGET="toolchain linux"
PKG_NEED_UNPACK="$LINUX_DEPENDS"
PKG_SECTION="driver.dvb"
PKG_LONGDESC="DVB driver for Digital Devices cards"

PKG_IS_ADDON="embedded"
PKG_ADDON_IS_STANDALONE="yes"
PKG_ADDON_NAME="DVB drivers for DigitalDevices"
PKG_ADDON_TYPE="xbmc.service"
PKG_ADDON_VERSION="${ADDON_VERSION}.${PKG_REV}"

make_target() {
  KDIR=$(kernel_path) make
}

makeinstall_target() {
  install_driver_addon_files "$PKG_BUILD/ddbridge $PKG_BUILD/dvb-core $PKG_BUILD/frontends"
}
