# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="musl-bsd-headers"
PKG_VERSION="0"
PKG_LICENSE="BSD"
PKG_SITE="http://www.voidlinux.org"
PKG_DEPENDS_TARGET="gcc:host"
PKG_LONGDESC="Legacy compatibility headers for the musl libc"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/include/sys
    cp -av ${PKG_DIR}/sources/sys-cdefs.h ${SYSROOT_PREFIX}/usr/include/sys/cdefs.h
    cp -av ${PKG_DIR}/sources/sys-queue.h ${SYSROOT_PREFIX}/usr/include/sys/queue.h
    cp -av ${PKG_DIR}/sources/sys-tree.h ${SYSROOT_PREFIX}/usr/include/sys/tree.h
}
