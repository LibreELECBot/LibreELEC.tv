# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2019 Mateusz Gruszczynski (https://www.linuxiarz.pl)

PKG_NAME="mtr-tool"
PKG_VERSION="0.92"
PKG_REV="100"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://bitwizard.nl/mtr"
PKG_SECTION="virtual"
PKG_SHORTDESC="mtr - network tool"
PKG_LONGDESC="mtr combines the functionality of the traceroute and ping programs in a single network diagnostic tool."
PKG_IS_ADDON="yes"
PKG_ADDON_NAME="mtr"
PKG_ADDON_TYPE="xbmc.python.script"
PKG_DEPENDS_TARGET="ncurses \
                    mtr"

addon() {
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp -P $(get_build_dir mtr)/.armv7ve-libreelec-linux-gnueabi/mtr $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp -P $(get_build_dir mtr)/.armv7ve-libreelec-linux-gnueabi/mtr-packet $ADDON_BUILD/$PKG_ADDON_ID/bin
}
