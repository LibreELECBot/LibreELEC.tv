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

PKG_NAME="exfat-utilities"
PKG_VERSION="798d250"
PKG_SHA256="07b1cd189f7ed47723d3666ac261400ecf7c636b5c0cc76cac2ee4336e5c7072"
PKG_ARCH="any"
PKG_LICENSE="GPLv2+"
PKG_SITE="https://github.com/relan/exfat"
PKG_URL="https://github.com/relan/exfat/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="exfat-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain exfat-nofuse"
PKG_SECTION="system"
PKG_SHORTDESC="Utilities for the exFAT file system"
PKG_TOOLCHAIN="autotools"
