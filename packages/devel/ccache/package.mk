################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016-present Team LibreELEC
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
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

PKG_NAME="ccache"
PKG_VERSION="3.3.4"
PKG_SHA256="fa9d7f38367431bc86b19ad107d709ca7ecf1574fdacca01698bdf0a47cd8567"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://ccache.samba.org/"
PKG_URL="https://samba.org/ftp/ccache/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_HOST="make:host"
PKG_SECTION="devel"
PKG_SHORTDESC="ccache: A fast compiler cache"
PKG_LONGDESC="Ccache is a compiler cache. It speeds up re-compilation of C/C++ code by caching previous compiles and detecting when the same compile is being done again."
PKG_AUTORECONF="no"

export CC=$LOCAL_CC
export CXX=$LOCAL_CXX

PKG_CONFIGURE_OPTS_HOST="--with-bundled-zlib"

post_makeinstall_host() {
# setup ccache
  if [ -z "$CCACHE_DISABLE" ]; then
    $TOOLCHAIN/bin/ccache --max-size=$CCACHE_CACHE_SIZE
  fi

  cat > $TOOLCHAIN/bin/host-gcc <<EOF
#!/bin/sh
$TOOLCHAIN/bin/ccache $CC "\$@"
EOF

  chmod +x $TOOLCHAIN/bin/host-gcc

  cat > $TOOLCHAIN/bin/host-g++ <<EOF
#!/bin/sh
$TOOLCHAIN/bin/ccache $CXX "\$@"
EOF

  chmod +x $TOOLCHAIN/bin/host-g++
}
