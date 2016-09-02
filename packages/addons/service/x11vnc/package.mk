################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016 Team LibreELEC
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
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

PKG_NAME="x11vnc"
PKG_VERSION="104705f"
PKG_REV="100"
PKG_ARCH="x86_64"
PKG_LICENSE="OSS"
PKG_SITE="https://github.com/LibVNC/x11vnc"
PKG_URL="https://github.com/LibVNC/x11vnc/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libX11 libXext libXtst libjpeg-turbo libvncserver"
PKG_PRIORITY="optional"
PKG_SECTION="service/system"
PKG_SHORTDESC="X11 VNC: X11 VNC server"
PKG_LONGDESC="X11 VNC ($PKG_VERSION) allows one to view remotely and interact with real X displays"
PKG_AUTORECONF="yes"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="X11 VNC"
PKG_ADDON_TYPE="xbmc.service"
PKG_ADDON_REPOVERSION="8.0"
PKG_MAINTAINER="Anton Voyl (awiouy)"

PKG_CONFIGURE_OPTS_TARGET="--enable-static"

pre_configure_target() {
  export LIBS="$LIBS -ljpeg -lpng -lpthread -lresolv -lz"
}

pre_build_target() {
  mkdir -p $PKG_BUILD/.$TARGET_NAME
  cp -RP $PKG_BUILD/* $PKG_BUILD/.$TARGET_NAME
}

makeinstall_target() {
  : # nop
}

addon() {
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp $PKG_BUILD/.$TARGET_NAME/src/x11vnc $ADDON_BUILD/$PKG_ADDON_ID/bin
}
