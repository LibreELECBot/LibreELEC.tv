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

PKG_NAME="perl"
PKG_VERSION="5.22.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://www.perl.org/"
PKG_URL="http://www.cpan.org/src/5.0/perl-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain perl-cross"
PKG_SECTION="tools"
PKG_PRIORITY="optional"
PKG_SHORTDESC="Perl"
PKG_LONGDESC="The Perl programming language"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="Perl"
PKG_ADDON_TYPE="xbmc.python.script"
PKG_ADDON_PROVIDES=""
PKG_ADDON_REPOVERSION="8.0"

PKG_AUTORECONF="no"

post_unpack() {
  chmod -R +w "$PKG_BUILD"
}

pre_configure_target() {
  cp -r "$ROOT/$BUILD/$(basename $(get_build_dir perl-cross))"/* \
        "$ROOT/$PKG_BUILD"
}

configure_target() {
  ./configure \
    --all-static \
    --prefix=/storage/.kodi/addons/tools.perl \
    --sysroot="$SYSROOT_PREFIX" \
    --target="$TARGET_NAME" \
    -Dusethreads
}

addon() {
  cd $ROOT/$PKG_BUILD
  make DESTDIR="$ROOT/$ADDON_BUILD/$PKG_ADDON_ID" install
  cd -
  mv "$ROOT/$ADDON_BUILD/$PKG_ADDON_ID/storage/.kodi/addons/tools.perl/bin" \
     "$ROOT/$ADDON_BUILD/$PKG_ADDON_ID/storage/.kodi/addons/tools.perl/lib" \
     "$ROOT/$ADDON_BUILD/$PKG_ADDON_ID/"
  rm -rf "$ROOT/$ADDON_BUILD/$PKG_ADDON_ID/storage"
}
