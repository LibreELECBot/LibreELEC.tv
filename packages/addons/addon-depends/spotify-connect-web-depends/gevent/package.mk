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
PKG_NAME="gevent"
PKG_VERSION="1.1.2"
PKG_LICENSE="MIT"
PKG_SITE="http://www.gevent.org"
PKG_URL="https://github.com/gevent/gevent/archive/v$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python distutilscross:host cffi coverage cython greenlet"
PKG_LONGDESC="Coroutine-based network library"

pre_make_target() {
  strip_lto
  export LDSHARED="$CC -shared"
  export PATH="$(get_build_dir cython)/bin":$PATH
  export PYTHONPATH="$(get_build_dir cython)":$PYTHONPATH
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
}

make_target() {
  export TARGET_CONFIGURE_OPTS
  python setup.py build
}

makeinstall_target() {
  python setup.py install --root=$INSTALL --prefix=/usr
}

post_makeinstall_target() {
  find $INSTALL/usr/lib -name "*.py" -exec rm -rf "{}" ";"
  rm -rf $INSTALL/usr/lib/python*/site-packages/*/tests
}
