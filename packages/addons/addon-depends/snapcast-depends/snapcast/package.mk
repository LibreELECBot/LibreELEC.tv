# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="snapcast"
PKG_VERSION="0.19.0"
PKG_SHA256="15faf3727bed1a937df95e4fcb5c72412258833bb3eabfea32169436b695d9ba"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/badaix/snapcast"
PKG_URL="https://github.com/badaix/snapcast/archive/v$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain aixlog alsa-lib asio avahi boost flac libvorbis popl opus soxr"
PKG_LONGDESC="Synchronous multi-room audio player."
PKG_TOOLCHAIN="make"
PKG_BUILD_FLAGS="-sysroot"

pre_configure_target() {
  cd ..
  rm -rf .$TARGET_NAME
  CXXFLAGS="$CXXFLAGS -I$(get_install_dir aixlog)/usr/include \
                      -I$(get_install_dir asio)/usr/include \
                      -I$(get_install_dir popl)/usr/include"
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -p server/snapserver client/snapclient $INSTALL/usr/bin
}
