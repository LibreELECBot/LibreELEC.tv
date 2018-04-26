################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libbluray"
PKG_VERSION="1.0.2a"
PKG_SHA256="a65c8504094ebda68e7ef477ea3b74a6bd4b3bbf7707d2d35813b4615ba186bc"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="https://www.videolan.org/developers/libbluray.html"
PKG_URL="https://github.com/CvH/libbluray/releases/download/$PKG_VERSION/libbluray-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain fontconfig freetype libxml2"
PKG_SECTION="multimedia"
PKG_SHORTDESC="libbluray: A Blu-Ray Discs playback library"
PKG_LONGDESC="libbluray is an open-source library designed for Blu-Ray Discs playback for media players, like VLC or MPlayer."
PKG_TOOLCHAIN="autotools"

if [ "$BLURAY_AACS_SUPPORT" = "yes" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET libaacs"
fi

if [ "$BLURAY_BDPLUS_SUPPORT" = "yes" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET libbdplus"
fi

PKG_CONFIGURE_OPTS_TARGET="--disable-werror \
                           --disable-extra-warnings \
                           --disable-optimizations \
                           --disable-examples \
                           --disable-bdjava-jar \
                           --disable-doxygen-doc \
                           --disable-doxygen-dot \
                           --disable-doxygen-man \
                           --disable-doxygen-rtf \
                           --disable-doxygen-xml \
                           --disable-doxygen-chm \
                           --disable-doxygen-chi \
                           --disable-doxygen-html \
                           --disable-doxygen-ps \
                           --disable-doxygen-pdf \
                           --with-freetype \
                           --with-fontconfig \
                           --with-libxml2 \
                           --with-gnu-ld"
