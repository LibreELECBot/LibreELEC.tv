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

PKG_NAME="lame"
PKG_VERSION="3.99.5"
PKG_SHA256="24346b4158e4af3bd9f2e194bb23eb473c75fb7377011523353196b19b9a23ff"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="http://lame.sourceforge.net/"
PKG_URL="$SOURCEFORGE_SRC/lame/lame/3.99/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="audio"
PKG_SHORTDESC="lame: LAME Ain't an Mp3 Encoder"
PKG_LONGDESC="LAME originally stood for LAME Ain't an Mp3 Encoder. The goal of the LAME project is to use the open source model to improve the psycho acoustics, noise shaping and speed of MP3. Another goal of the LAME project is to use these improvements for the basis of a patent free audio compression codec for the GNU project."
PKG_AUTORECONF="no"

# package specific configure options
PKG_CONFIGURE_OPTS_TARGET="--enable-static \
                           --disable-shared \
                           --disable-nasm \
                           --disable-rpath \
                           --disable-cpml \
                           --disable-gtktest \
                           --disable-efence \
                           --disable-analyzer-hooks \
                           --enable-decoder \
                           --disable-frontend \
                           --disable-mp3x \
                           --disable-mp3rtp \
                           --disable-dynamic-frontends \
                           --enable-expopt=no \
                           --enable-debug=no \
                           --with-gnu-ld \
                           --with-fileio=lame \
                           GTK_CONFIG=no"

post_make_target() {
  # dont build parallel
    MAKEFLAGS=-j1
}
