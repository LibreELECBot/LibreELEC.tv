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

PKG_NAME="cython"
PKG_VERSION="0.27.1"
PKG_SHA256="e6840a2ba2704f4ffb40e454c36f73aeb440a4005453ee8d7ff6a00d812ba176"
PKG_LICENSE="ASL"
PKG_SITE="http://cython.org/"
PKG_URL="https://files.pythonhosted.org/packages/source/C/Cython/Cython-$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="Cython-$PKG_VERSION"
PKG_DEPENDS_HOST=""
PKG_LONGDESC="The Cython compiler for writing C extensions for the Python language"

PKG_IS_PYTHON="yes"

pre_make_host() {
  unset _python_exec_prefix _python_prefix _python_sysroot
}
