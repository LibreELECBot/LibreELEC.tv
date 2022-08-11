# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="musl-fts"
PKG_VERSION="1.2.7"
PKG_SHA256="49ae567a96dbab22823d045ffebe0d6b14b9b799925e9ca9274d47d26ff482a6"
PKG_LICENSE="BSD-3-Clause"
PKG_SITE="https://github.com/void-linux/${PKG_NAME}"
PKG_URL="https://github.com/void-linux/${PKG_NAME}/archive/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="gcc:host"
PKG_LONGDESC="Implementation of fts(3) for musl libc"
PKG_TOOLCHAIN="autotools"
