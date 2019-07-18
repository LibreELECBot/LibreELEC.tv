# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019 Mateusz Gruszczynski (https://www.linxiarz.pl)

PKG_NAME="mtr"
PKG_VERSION="0.92"
PKG_SHA256="f2979db9e2f41aa8e6574e7771767c9afe111d9213814eb47f5e1e71876e4382"
PKG_LICENSE="GPL"
PKG_SITE="ftp://ftp.bitwizard.nl/mtr"
PKG_URL="ftp://ftp.bitwizard.nl/mtr/mtr-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="ncurses"

makeinstall_target() {
  : # nop
}
