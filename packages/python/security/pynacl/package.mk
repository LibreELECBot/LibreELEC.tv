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

PKG_NAME="pynacl"
PKG_VERSION="1.2.1"
PKG_SHA256="00ac0c2bfaa087de634a73a4e348f535f69c386fabf762adb4841728b5fe88b1"
PKG_LICENSE="ALv2"
PKG_SITE="https://pynacl.readthedocs.io/"
PKG_URL="https://github.com/pyca/$PKG_NAME/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="cffi libsodium six"
PKG_LONGDESC="Python binding to the Networking and Cryptography (NaCl) library"

PKG_TOOLCHAIN="python"

pre_make_target() {
  export SODIUM_INSTALL="system"
}
