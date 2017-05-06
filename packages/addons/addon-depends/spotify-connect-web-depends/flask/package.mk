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
PKG_NAME="flask"
PKG_VERSION="0.11.1"
PKG_LICENSE="BSD"
PKG_SITE="http://github.com/pallets/flask/"
PKG_URL="https://github.com/pallets/flask/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="Flask-$PKG_VERSION"
PKG_DEPENDS_TARGET="toolchain Python distutilscross:host click itsdangerous jinja werkzeug"
PKG_LONGDESC="A microframework based on Werkzeug, Jinja2 and good intentions"

pre_make_target() {
  strip_lto
  export LDSHARED="$CC -shared"
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
}

make_target() {
  python setup.py build --cross-compile
}

makeinstall_target() {
  python setup.py install --root=$INSTALL --prefix=/usr
}

post_makeinstall_target() {
  find $INSTALL/usr/lib -name "*.py" -exec rm -rf "{}" ";"
  rm -rf $INSTALL/usr/lib/python*/site-packages/*/tests
}
