# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="musl"
PKG_VERSION="1.2.3"
PKG_SHA256="7d5b0b6062521e4627e099e4c9dc8248d32a30285e959b7eecaa780cf8cfd4a4"
PKG_LICENSE="MIT"
PKG_SITE="https://musl.libc.org/"
PKG_URL="https://musl.libc.org/releases/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="ccache:host autotools:host linux:host gcc:bootstrap"
PKG_DEPENDS_INIT="musl"
PKG_LONGDESC="musl is an implementation of the C standard library"
PKG_BUILD_FLAGS="-gold"

PKG_CONFIGURE_OPTS_TARGET="--disable-static \
                           --enable-shared"

configure_init() {
  cd ${PKG_BUILD}
    rm -rf ${PKG_BUILD}/.${TARGET_NAME}-init
}

make_init() {
  : # reuse make_target()
}

makeinstall_init() {
  mkdir -p ${INSTALL}/usr/lib
    cp -PR ${PKG_BUILD}/.${TARGET_NAME}/lib/libc.so ${INSTALL}/usr/lib

    ln -sf /usr/lib/libc.so ${INSTALL}/usr/lib/ld-musl-armhf.so.1
}
