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

PKG_NAME="lxml"
PKG_VERSION="4.0.0"
PKG_SHA256="51b04cc61046713bf4a0eea6ec91403cec1de780bfde348fba2a24e3b463c94e"
PKG_LICENSE="BSD"
PKG_SITE="http://lxml.de/"
PKG_URL="https://github.com/lxml/$PKG_NAME/archive/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="lxml-$PKG_NAME-$PKG_VERSION"
PKG_DEPENDS_TARGET="cython:host libxslt:host Python libxml2 libxslt"
PKG_LONGDESC="The lxml XML toolkit for Python"

PKG_IS_PYTHON="yes"
