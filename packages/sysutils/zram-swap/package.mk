# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="zram-swap"
PKG_VERSION="02"
PKG_SHA256="8b9a7dc9e83dce3590281ba7a258562b427d06181327c6fb7368648b10792039"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/foundObjects/zram-swap"
PKG_URL="https://github.com/foundObjects/zram-swap/archive/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A simple zram swap script for modern systemd Linux"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/sbin
    cp -a ${PKG_BUILD}/zram-swap.sh ${INSTALL}/usr/sbin

  mkdir -p ${INSTALL}/usr/lib/systemd/system
    cp -a ${PKG_BUILD}/service/zram-swap.service ${INSTALL}/usr/lib/systemd/system
    sed 's|/usr/local/sbin/|/usr/sbin/|g' -i ${INSTALL}/usr/lib/systemd/system/zram-swap.service

  mkdir -p ${INSTALL}/etc/default
    ln -sf /storage/.config/zram-swap ${INSTALL}/etc/default/zram-swap
}

post_install() {
  enable_service zram-swap.service
}
