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

PKG_NAME="cryptography"
PKG_VERSION="2.1.4"
PKG_SHA256="9b8c169526aaf45f851f9324b2786abd4bc875db72333981eb0d22b11cd49e65"
PKG_LICENSE="ALv2"
PKG_SITE="https://cryptography.io"
PKG_URL="https://github.com/pyca/$PKG_NAME/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="asn1crypto cffi enum34 idna ipaddress six"
PKG_LONGDESC="cryptography is a package designed to expose cryptographic primitives and recipes to Python developers"

PKG_TOOLCHAIN="python"

pre_make_target() {
  export CC="$CC -pthread"
}
