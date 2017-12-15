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

PKG_NAME="pycryptodome"
PKG_VERSION="3.4.7"
PKG_SHA256="18d8dfe31bf0cb53d58694903e526be68f3cf48e6e3c6dfbbc1e7042b1693af7"
PKG_LICENSE="BSD"
PKG_SITE="https://www.pycryptodome.org/"
PKG_URL="https://files.pythonhosted.org/packages/source/${PKG_NAME:0:1}/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_LONGDESC="PyCryptodome is a self-contained Python package of low-level cryptographic primitives"

PKG_TOOLCHAIN="python"

post_makeinstall_target() {
  rm -rf $_pythonpath/pycryptodome-*.egg/Crypto/SelfTest
  ln -sfr $_pythonpath/pycryptodome-*.egg/Crypto \
          $_pythonpath/Cryptodome
}
