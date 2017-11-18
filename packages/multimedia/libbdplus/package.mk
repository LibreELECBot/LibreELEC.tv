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

PKG_NAME="libbdplus"
PKG_VERSION="0.1.2"
PKG_SHA256="a631cae3cd34bf054db040b64edbfc8430936e762eb433b1789358ac3d3dc80a"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://www.videolan.org/developers/libbdplus.html"
PKG_URL="https://ftp.videolan.org/pub/videolan/$PKG_NAME/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libgcrypt libgpg-error"
PKG_SECTION="multimedia"
PKG_SHORTDESC="libbdplus: A project to implement the BD+ System Specifications"
PKG_LONGDESC="libbdplus is a research project to implement the BD+ System Specifications."
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-werror \
                           --disable-extra-warnings \
                           --disable-optimizations \
                           --with-libgcrypt-prefix=$SYSROOT_PREFIX/usr \
                           --with-gpg-error-prefix=$SYSROOT_PREFIX/usr \
                           --with-gnu-ld"

if [ "$BLURAY_AACS_SUPPORT" = "yes" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET libaacs"
  PKG_CONFIGURE_OPTS_TARGET="$PKG_CONFIGURE_OPTS_TARGET --with-libaacs"
else
  PKG_CONFIGURE_OPTS_TARGET="$PKG_CONFIGURE_OPTS_TARGET --without-libaacs"
fi
