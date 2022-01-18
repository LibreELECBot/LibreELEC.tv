# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="espeak-ng"
PKG_VERSION="1.50"
PKG_SHA256="3dc31309f1674f2009cb53c466771116a183a8d71abf18d80a4e39615d61ae5e"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/espeak-ng/espeak-ng"
PKG_URL="https://github.com/espeak-ng/espeak-ng/archive/refs/tags/${PKG_VERSION}.zip"
PKG_DEPENDS_HOST="toolchain:host "
PKG_DEPENDS_TARGET="toolchain espeak-ng:host"
PKG_LONGDESC="eSpeak NG is an open source speech synthesizer that supports more than a hundred languages and accents"
PKG_TOOLCHAIN="autotools"

post_unpack() {
  ln -sf "${PKG_BUILD}/CHANGELOG.md" "${PKG_BUILD}/NEWS"
  ln -sf "${PKG_BUILD}/README.md" "${PKG_BUILD}/README"
}

pre_configure() {
  cp -r ../docs .
  cp -r ../src .
}

pre_configure_host() {
  cp -r ../dictsource .
  cp -r ../espeak-ng-data .
  cp -r ../phsource .
  cp -r ../vim .
}

make_host() {
  make -j1
}

make_target() {
  make src/espeak-ng src/speak-ng
}

makeinstall_target() {
  make src/espeak-ng src/speak-ng
  make install-exec DESTDIR=$INSTALL
  mkdir -p $INSTALL/usr/share/espeak-ng-data
  cp -prf $TOOLCHAIN/share/espeak-ng-data $INSTALL/usr/share
}

