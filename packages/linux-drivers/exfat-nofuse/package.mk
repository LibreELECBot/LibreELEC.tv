################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016-present Team LibreELEC
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

PKG_NAME="exfat-nofuse"
PKG_VERSION="de4c760"
PKG_SHA256="789e6f1679dde175e44fa18038bb07bae9c524a1fb7b99da1e5e60a5ea219ccb"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/dorimanx/exfat-nofuse"
PKG_URL="https://github.com/dorimanx/exfat-nofuse/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain linux"
PKG_SECTION="driver"
PKG_SHORTDESC="Linux non-fuse read/write kernel driver for exFat"

make_target() {
  LDFLAGS="" make KDIR=$(kernel_path)
}

makeinstall_target() {
  mkdir -p $INSTALL/$(get_full_module_dir)/$PKG_NAME
  cp *.ko $INSTALL/$(get_full_module_dir)/$PKG_NAME
}
