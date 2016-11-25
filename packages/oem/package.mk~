################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="oem"
PKG_VERSION=""
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="various"
PKG_SITE="http://www.libreelec.tv"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain"
#PKG_DEPENDS_TARGET="toolchain $PROJECT"
#PKG_PRIORITY="optional"
PKG_SECTION="virtual"
PKG_SHORTDESC="OEM: Metapackage for various OEM packages"
PKG_LONGDESC="OEM: Metapackage for various OEM packages"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

OEM_EMU_COMMON=" \
  	glupen64-libretro \
  	mame2003-libretro \
  	emulationstation"

OEM_EMU_GENERIC=" \
	mame2010-libretro"

OEM_EMU_RPI=" \
	desmume-libretro \
	yabause-libretro \
	uae4arm-libretro \
  	retroarch"

# Errors compiling:
# Generic 7: uae4arm-libretro, retroarch (vulkan)
# RPI2 LE7: mame2010-libretro, ppsspp-libretro, reicast-libretro, uae4arm (SDL)
# RPI2 LE8: mame2010-libretro, ppsspp-libretro, reicast-libretro, uae4arm (SDL)

if [ ! "$OEM_EMU" = "no" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OEM_EMU_COMMON"
  case $PROJECT in
    Generic)
      PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OEM_EMU_GENERIC"
      ;;
    RPi*)
      PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OEM_EMU_RPI"
      ;;
  esac
fi




# ESCALADE OEM PACKAGE
# PKG_NAME="oem"
# PKG_VERSION=""
# PKG_REV="1"
# PKG_ARCH="any"
# PKG_LICENSE="various"
# PKG_SITE="http://www.libreelec.tv"
# PKG_URL=""
# PKG_DEPENDS_TARGET="toolchain"
# PKG_SECTION="virtual"
# PKG_SHORTDESC="OEM: Metapackage for various OEM packages"
# PKG_LONGDESC="OEM: Metapackage for various OEM packages"

# PKG_IS_ADDON="no"
# PKG_AUTORECONF="no"

# OEM_APPS_COMMON=" \
#   addons-to-image \
#   docker-system \
#   dstat \
#   htop \
#   nmon \
#   NzbDrone \
#   plexmediaserver-script \
#   rsync \
#   sdl-jstest \
#   SABnzbd \
#   tcpdump \
#   transmission \
#   ttf-tlwg \
#   unfs3 \
#   vim"

# OEM_APPS_GENERIC=" \
#   google-chrome \
#   spotify \
#   tigervnc-system \
#   qemu"

# OEM_EMU_COMMON=" \
#   beetle-wswan-libretro \
#   dosbox-sdl \
#   ds4drv \
#   emulationstation \
#   fbalpha-libretro \
#   fuse-libretro \
#   genesis-plus-gx-libretro \
#   emulationstation \
#   mame2003-libretro \
#   mgba-libretro \
#   mupen64plus-libretro \
#   glupen64-libretro \
#   nxengine-libretro \
#   quicknes-libretro \
#   prboom-libretro \
#   residualvm \
#   retroarch \
#   scraper \
#   scummvm-libretro \
#   snes9x2010-libretro \
#   tyrquake-libretro \
#   vice"

# OEM_EMU_GENERIC=" \
#   beetle-psx-libretro \
#   beetle-saturn-libretro \
#   craft-libretro \
#   desmume-libretro \
#   dolphin \
#   fs-uae \
#   ppsspp-libretro \
#   reicast-libretro \
#   unclutter"

# OEM_EMU_RPI=" \
#   gpsp \
#   uae4arm \
#   pcsx_rearmed-libretro \
#   yabause-libretro"

# if [ ! "$OEM_APPS" = "no" ]; then
#   PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OEM_APPS_COMMON"
#   case $PROJECT in
#     Generic)
#       PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OEM_APPS_GENERIC"
#       ;;
#     RPi*)
#       PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OEM_APPS_RPI"
#       ;;
#   esac
# fi

# if [ ! "$OEM_EMU" = "no" ]; then
#   PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OEM_EMU_COMMON"
#   case $PROJECT in
#     Generic)
#       PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OEM_EMU_GENERIC"
#       ;;
#     RPi*)
#       PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $OEM_EMU_RPI"
#       ;;
#   esac
# fi