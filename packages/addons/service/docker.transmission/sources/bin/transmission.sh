#!/bin/sh
################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

# Dispose of legacy services
for service in service.downloadmanager.@NAME@ @NAME@
do
  systemctl stop "$service" 2>/dev/null
  systemctl disable "$service" 2>/dev/null
done

. /etc/profile
oe_setup_addon service.docker.@NAME@

mkdir -p "$tx_config" "$tx_downloads" "$tx_incomplete" "$tx_watch"

docker rm @NAME@ 2>/dev/null
docker run --rm \
           --name=@NAME@ \
           --hostname=libreelec-@NAME@ \
           --volume="$tx_config":/config \
           --volume="$tx_downloads":/downloads \
           --volume="$tx_incomplete":/incomplete \
           --volume="$tx_watch":/watch \
           --publish="$tx_peer":45555 \
           --publish="$tx_rpc":9091 \
           "@OWNER@/@NAME@:@TAG@"
