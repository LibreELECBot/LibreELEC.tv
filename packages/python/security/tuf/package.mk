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

PKG_NAME="tuf"
PKG_VERSION="0.10.1"
PKG_SHA256="8f5f4a93e36ea1ddeb8c11cd31ecdf1324ac8e64261418468bfc9f1f970bf572"
PKG_LICENSE="ALv2"
PKG_SITE="https://www.updateframework.com"
PKG_URL="https://github.com/theupdateframework/$PKG_NAME/archive/v$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="iso8601 securesystemslib six"
PKG_LONGDESC="A framework for securing software update systems"

PKG_TOOLCHAIN="python"
