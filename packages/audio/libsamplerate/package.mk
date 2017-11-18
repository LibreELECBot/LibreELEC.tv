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

PKG_NAME="libsamplerate"
PKG_VERSION="0.1.8"
PKG_SHA256="93b54bdf46d5e6d2354b7034395fe329c222a966790de34520702bb9642f1c06"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.mega-nerd.com/SRC/"
PKG_URL="http://www.mega-nerd.com/SRC/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="audio"
PKG_SHORTDESC="libsamplerate: A Sample Rate Converter library for audio"
PKG_LONGDESC="Libsamplerate is a Sample Rate Converter for audio. One example of where such a thing would be useful is converting audio from the CD sample rate of 44.1kHz to the 48kHz sample rate used by DAT players."
PKG_AUTORECONF="no"

# package specific configure options
PKG_CONFIGURE_OPTS_TARGET="--disable-shared \
                           --enable-static \
                           --datadir=/usr/share \
                           --disable-fftw \
                           --disable-sndfile"

post_makeinstall_target() {
  rm -rf $INSTALL/usr/bin
}
