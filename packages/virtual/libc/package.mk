# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libc"
PKG_VERSION=""
PKG_LICENSE="GPL"
PKG_SITE="https://libreelec.tv"
PKG_URL=""
PKG_DEPENDS_TARGET="gcc:host"
PKG_DEPENDS_INIT="toolchain ${LIBC_VERSION}:init"
PKG_SECTION="virtual"
PKG_LONGDESC="Meta package for installing various tools and libs needed for libc"

if [ "${ARM_MEM_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" arm-mem"
  PKG_DEPENDS_INIT+=" arm-mem:init"
fi

if [ "${LIBC_VERSION}" = "musl" ]; then
  PKG_DEPENDS_TARGET+=" argp-standalone musl-fts musl-bsd-headers musl-obstack musl-gcompat"
fi
