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

PKG_NAME="xkeyboard-config"
PKG_VERSION="2.22"
PKG_SHA256="deaec9989fbc443358b43864437b7b6d39caff07890a4a8055105ce9fcaa59bd"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.X.org"
PKG_URL="http://www.x.org/releases/individual/data/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain util-macros xkbcomp"
PKG_SECTION="x11/data"
PKG_SHORTDESC="xkeyboard-config: X keyboard extension data files"
PKG_LONGDESC="X keyboard extension data files."
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="XKBCOMP=/usr/bin/xkbcomp \
                           --without-xsltproc \
                           --enable-compat-rules \
                           --enable-runtime-deps \
                           --enable-nls \
                           --disable-rpath \
                           --with-xkb-base=$XORG_PATH_XKB \
                           --with-xkb-rules-symlink=xorg \
                           --with-gnu-ld"

pre_build_target() {
# broken autoreconf
  ( cd $PKG_BUILD
    intltoolize --force
  )
}
