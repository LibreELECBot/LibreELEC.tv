# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016 Team LibreELEC (https://libreelec.tv)

PKG_NAME="screen"
PKG_VERSION="4.9.0"
PKG_SHA256="f9335281bb4d1538ed078df78a20c2f39d3af9a4e91c57d084271e0289c730f4"
PKG_LICENSE="GPL"
PKG_SITE="http://www.gnu.org/software/screen/"
PKG_URL="http://ftpmirror.gnu.org/screen/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain ncurses"
PKG_LONGDESC="Screen is a window manager that multiplexes a physical terminal between several processes"
PKG_BUILD_FLAGS="-sysroot -parallel"
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_header_utempter_h=no \
                           --enable-colors256 \
                           --disable-pam \
                           --disable-use-locale \
                           --disable-telnet \
                           --disable-socket-dir"

