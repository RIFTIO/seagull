#!/bin/ksh
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# (c)Copyright 2006 Hewlett-Packard Development Company, LP.
#
#
#
# Install script
#
#
# Command definitions

INSTALL_ROOT=$1

# Copy binaries
mkdir -p $INSTALL_ROOT/usr/local/bin/
cp bin/* $INSTALL_ROOT/usr/local/bin/

# Create shared directories
mkdir -p $INSTALL_ROOT/opt/seagull

# Copy execution environments
cp -R exe-env/* $INSTALL_ROOT/opt/seagull/

# Copy remote control dictionary
mkdir -p $INSTALL_ROOT/opt/seagull/config
cp generator-control/remote-ctrl.xml $INSTALL_ROOT/opt/seagull/config/
