# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libmbedtls"
PKG_VERSION="2.16.9"
PKG_SHA256="fc17ff7d8c11d08f23ae2800a18269408ad2c24ea6bb8b9363e41a01c2425697"
PKG_LICENSE="GPL"
PKG_SITE="https://www.trustedfirmware.org/projects/mbed-tls/"
PKG_URL="https://github.com/Mbed-TLS/mbedtls/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="mbed TLS (formerly known as PolarSSL) is a lean open source crypto library for providing SSL and TLS support."
PKG_BUILD_FLAGS="-sysroot"

PKG_CMAKE_OPTS_TARGET="-DCMAKE_INSTALL_PREFIX=/usr"
