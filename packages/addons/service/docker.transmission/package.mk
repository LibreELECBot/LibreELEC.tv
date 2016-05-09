################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
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

PKG_NAME="transmission"
PKG_VERSION="1.0.0"
PKG_REV="100"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_SITE="http://www.libreelec.tv"
PKG_DEPENDS_TARGET=""
PKG_AUTORECONF="no"
PKG_PRIORITY="optional"
PKG_SECTION="service/docker"
PKG_SHORTDESC="Transmission"
PKG_LONGDESC="an open source, easy, lean and powerful BitTorrent client"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="Transmission (Docker)"
PKG_ADDON_TYPE="xbmc.service"
PKG_ADDON_REPOVERSION="8.0"
PKG_ADDON_REQUIRES="service.system.docker:0.0.0"

make_target() {
  : # nothing to do here
}

makeinstall_target() {
  : # nothing to do here
}

addon() {
  case $ARCH in
    arm)
      OWNER="libreelecarm"
      ;;
    x86_64)
      OWNER="libreelec"
      ;;
  esac
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID
  cp -r $ROOT/$PKG_BUILD/* $ADDON_BUILD/$PKG_ADDON_ID
  sed -e "s/@OWNER@/$OWNER/g" \
      -e "s/@NAME@/$PKG_NAME/g" \
      -e "s/@TAG@/$PKG_VERSION/g" \
      -i $ADDON_BUILD/$PKG_ADDON_ID/bin/transmission.sh
}
