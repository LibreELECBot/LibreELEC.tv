# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="argp-standalone"
PKG_VERSION="1.4.1"
PKG_SHA256="879d76374424dce051b812f16f43c6d16de8dbaddd76002f83fd1b6e57d39e0b"
PKG_LICENSE="LGPL-2.1-or-later"
PKG_SITE="https://github.com/ericonr/argp-standalone"
PKG_URL="https://github.com/ericonr/argp-standalone/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="gcc:host"
PKG_LONGDESC="Implementation of ARGP"
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="+pic"

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib
    cp -a ${PKG_BUILD}/.${TARGET_NAME}/libargp.a ${SYSROOT_PREFIX}/usr/lib

  mkdir -p ${SYSROOT_PREFIX}/usr/include
    cp -a ${PKG_BUILD}/argp.h ${SYSROOT_PREFIX}/usr/include
}
