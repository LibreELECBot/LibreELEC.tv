# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="persistent-journal"
PKG_VERSION="0"
PKG_REV="100"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://libreelec.tv"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="service"
PKG_SHORTDESC="Configure a persistent journal"
PKG_LONGDESC="Configure a persistent journal on LibreELEC. Reboot required to apply changes."
PKG_TOOLCHAIN="manual"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="LibreELEC Persistent Journal"
PKG_ADDON_TYPE="xbmc.service"

addon() {
  :
}
