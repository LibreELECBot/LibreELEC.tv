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

PKG_NAME="securesystemslib"
PKG_VERSION="0.10.8"
PKG_SHA256="9edaae8a33a5b00bde02473de320a77ca6a5982f37085b020c1dac96a9668674"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/secure-systems-lab/securesystemslib"
PKG_URL="https://github.com/secure-systems-lab/$PKG_NAME/archive/v$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="cryptography pynacl pycryptodome six"
PKG_LONGDESC="Cryptographic and general-purpose routines for Secure Systems Lab projects at NYU"

PKG_TOOLCHAIN="python"
