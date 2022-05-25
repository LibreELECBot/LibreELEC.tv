# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="musl-gcompat"
PKG_VERSION="1.0.0"
PKG_SHA256="9b30b7db6ebaa5242f9ff89b0cf00bed4c9d87bb5b2f1b8009403c9fdb7167f2"
PKG_LICENSE="NCSA"
PKG_SITE="https://git.adelielinux.org/adelie/gcompat"
PKG_URL="https://git.adelielinux.org/adelie/gcompat/-/archive/${PKG_VERSION}/gcompat-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="gcc:host musl-obstack"
PKG_LONGDESC="A library which provides glibc-compatible APIs for use on musl libc systems"
PKG_TOOLCHAIN="make"
