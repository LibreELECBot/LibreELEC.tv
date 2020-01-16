# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="make"
PKG_VERSION="4.2.93"
PKG_SHA256="320bc015ea8f62ad85552a8d38bbd6c82b6b823f038fa9493eeddd17bf5232da"
PKG_LICENSE="GPLv3"
PKG_SITE="https://www.gnu.org/software/make/"
PKG_URL="https://alpha.gnu.org/gnu/make/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_HOST=""
PKG_LONGDESC="Utility to maintain groups of programs."

pre_configure_host() {
  export CC=$LOCAL_CC
}

post_makeinstall_host() {
  ln -sf make $TOOLCHAIN/bin/gmake
}
