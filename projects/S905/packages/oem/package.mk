################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2017-present Team LibreELEC
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

PKG_NAME="oem"
PKG_VERSION=""
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="various"
PKG_SITE="https://libreelec.tv"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain aml-dtbtools:host aml-s9xx-device-trees u-boot-tools"
PKG_PRIORITY="optional"
PKG_SECTION="virtual"
PKG_SHORTDESC="OEM: Metapackage for various OEM packages"
PKG_LONGDESC="OEM: Metapackage for various OEM packages"

PKG_IS_ADDON="no"

post_install() {
  if [ -n "$DEVICE" -a -d "$PROJECT_DIR/$PROJECT/devices/$DEVICE/filesystem" ]; then
    cp -LR $PROJECT_DIR/$PROJECT/devices/$DEVICE/filesystem/* $BUILD/image/system
  fi
}
