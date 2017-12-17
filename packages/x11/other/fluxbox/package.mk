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

PKG_NAME="fluxbox"
# dont bump or go back to ratpoison then f*** all 3rdparty stuff.
PKG_VERSION="1.3.7"
PKG_SHA256="c99e2baa06fff1e96342b20415059d12ff1fa2917ade0173c75b2fa570295b9f"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://fluxbox.org/"
PKG_URL="http://sourceforge.net/projects/fluxbox/files/fluxbox/${PKG_VERSION}/$PKG_NAME-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain libX11 libXrandr libXext libXrender"
PKG_SECTION="x11/other"
PKG_SHORTDESC="Fluxbox is a windowmanager for X that was based on the Blackbox 0.61.1 code"
PKG_LONGDESC="Fluxbox is a windowmanager for X that was based on the Blackbox 0.61.1 code. It is very light on resources and easy to handle but yet full of features to make an easy, and extremely fast, desktop experience. It is built using C++ and licensed under the MIT-License."
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_func_realloc_0_nonnull=yes \
                           ac_cv_func_malloc_0_nonnull=yes \
                           --disable-toolbar \
                           --disable-slit \
                           --disable-systray \
                           --enable-ewmh \
                           --disable-xpm \
                           --disable-xft \
                           --disable-fribidi \
                           --disable-debug \
                           --disable-test \
                           --disable-nls \
                           --disable-imlib2"

post_install() {
  enable_service windowmanager.service
}

post_makeinstall_target() {
  rm -rf $INSTALL/usr/bin/fbrun
  rm -rf $INSTALL/usr/bin/fbsetbg
  rm -rf $INSTALL/usr/bin/fluxbox-generate_menu
  rm -rf $INSTALL/usr/bin/fluxbox-remote
  rm -rf $INSTALL/usr/bin/startfluxbox

  rm -rf $INSTALL/usr/share/fluxbox/styles

  cp $PKG_DIR/config/apps $INSTALL/usr/share/fluxbox/
  cp $PKG_DIR/config/init $INSTALL/usr/share/fluxbox/
  cp $PKG_DIR/config/keys $INSTALL/usr/share/fluxbox/
}
