# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2022=present Team LibreELEC (https://libreelec.tv)

PKG_NAME="mold"
PKG_VERSION="1.3.0"
PKG_SHA256="02132ae717d7f22f8bc7e5c22642ad41541ec4c535fa85f095c60ecc81465a3d"
PKG_LICENSE="AGPLv3"
PKG_SITE="https://github.com/rui314/mold"
PKG_URL="https://github.com/rui314/mold/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="tbb:host mimalloc:host zlib:host"
PKG_LONGDESC="mold is a faster drop-in replacement for existing Unix linkers"
PKG_TOOLCHAIN="manual"

PKG_MAKE_OPTS_HOST="PREFIX=/ SYSTEM_MIMALLOC=1 SYSTEM_TBB=1"

make_host() {
  make ${PKG_MAKE_OPTS_HOST} CXXFLAGS="${CXXFLAGS} -I${TOOLCHAIN}/include/tbb -I${TOOLCHAIN}/include/mimalloc-2.0"
}

makeinstall_host() {
  DESTDIR=${TOOLCHAIN} make install ${PKG_MAKE_OPTS_HOST}
}
