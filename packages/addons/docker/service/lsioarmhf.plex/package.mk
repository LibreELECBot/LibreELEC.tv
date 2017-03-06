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

PKG_NAME="lsioarmhf.plex"
PKG_VERSION="11" # Update bin/docker.lsioarmhf.plex accordingly
PKG_REV="100"
PKG_ARCH="arm"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="docker"
PKG_SITE="https://hub.docker.com/r/lsioarmhf/plex/"
PKG_SHORTDESC="Plex Media Server as a Docker container"
PKG_LONGDESC="Plex organizes video, music and photos from personal media libraries and streams them to smart televsions, streaming boxes and mobile devices"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="Plex (lsioarmhf/plex:$PKG_VERSION)"
PKG_ADDON_PROJECTS="RPi RPi2 imx6"
PKG_ADDON_REQUIRES="service.system.docker:0.0.0"
PKG_ADDON_TYPE="xbmc.service"

make_target() {
  : #
}

makeinstall_target() {
  : #
}

addon() {
  : #
}
