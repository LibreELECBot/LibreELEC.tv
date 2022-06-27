# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2022 Team LibreELEC (https://libreelec.tv)

PKG_NAME="tbb"
PKG_VERSION="2021.5.0"
PKG_SHA256="e5b57537c741400cf6134b428fc1689a649d7d38d9bb9c1b6d64f092ea28178a"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://github.com/oneapi-src/oneTBB"
PKG_URL="https://github.com/oneapi-src/oneTBB/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="cmake:host ninja:host"
PKG_LONGDESC="oneTBB is a flexible C++ library that simplifies the work of adding parallelism to complex applications"

PKG_CMAKE_OPTS_HOST="-DTBB_TEST=OFF \
                     -DTBB_EXAMPLES=ON \
                     -DTBB_STRICT=OFF \
                     -DTBB4PY_BUILD=OFF \
                     -DTBB_BUILD=ON \
                     -DTBBMALLOC_BUILD=ON \
                     -DTBBMALLOC_PROXY_BUILD=ON \
                     -DTBB_CPF=OFF \
                     -DTBB_FIND_PACKAGE=OFF \
                     -DTBB_DISABLE_HWLOC_AUTOMATIC_SEARCH=OFF \
                     -DTBB_ENABLE_IPO=ON"

pre_configure_host() {
  export CXXFLAGS+=" -D__TBB_DYNAMIC_LOAD_ENABLED=0"
}
