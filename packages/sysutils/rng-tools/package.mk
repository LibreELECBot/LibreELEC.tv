################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2017-present Team LibreELEC
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
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

PKG_NAME="rng-tools"
PKG_VERSION="5"
PKG_SHA256="60a102b6603bbcce2da341470cad42eeaa9564a16b4490e7867026ca11a3078e"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://sourceforge.net/projects/gkernel/files/rng-tools/"
PKG_URL="$SOURCEFORGE_SRC/gkernel/$PKG_NAME/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="system"
PKG_SHORTDESC="rng-tools: Daemon to use a Hardware TRNG"
PKG_LONGDESC="The rngd daemon acts as a bridge between a Hardware TRNG (true random number generator) such as the ones in some Intel/AMD/VIA chipsets, and the kernel's PRNG (pseudo-random number generator)."
PKG_TOOLCHAIN="autotools"

post_install() {
  enable_service rng-tools.service
}
