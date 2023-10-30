# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="ntfs-3g_ntfsprogs"
PKG_VERSION="2022.10.3"
PKG_SHA256="f20e36ee68074b845e3629e6bced4706ad053804cbaf062fbae60738f854170c"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/tuxera/ntfs-3g"
PKG_URL="https://tuxera.com/opensource/${PKG_NAME}-${PKG_VERSION}.tgz"
PKG_DEPENDS_TARGET="toolchain libgcrypt"
PKG_LONGDESC="Tools used with NTFS filesystems."
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="+lto"

PKG_CONFIGURE_OPTS_TARGET="--exec-prefix=/usr/ \
                           --disable-dependency-tracking \
                           --disable-library \
                           --enable-posix-acls \
                           --enable-mtab \
                           --enable-ntfsprogs \
                           --disable-ntfs-3g \
                           --disable-crypto \
                           --with-fuse=external \
                           --with-uuid"

post_makeinstall_target() {
  rm -rf ${INSTALL}/usr/bin/ntfscat
  rm -rf ${INSTALL}/usr/bin/ntfscluster
  rm -rf ${INSTALL}/usr/bin/ntfscmp
  rm -rf ${INSTALL}/usr/bin/ntfsls
  rm -rf ${INSTALL}/usr/sbin/ntfsclone
  rm -rf ${INSTALL}/usr/sbin/ntfscp
  rm -rf ${INSTALL}/usr/sbin/ntfsundelete

  mkdir -p ${INSTALL}/usr/sbin
    ln -sf /usr/sbin/mkntfs ${INSTALL}/usr/sbin/mkfs.ntfs
}
