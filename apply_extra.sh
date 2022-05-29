#!/bin/bash -e

SRC="/app/extra/wt.tar.gz"
XDG_DATA_HOME="/app/extra/tmp/"

# Setup
mkdir -p $XDG_DATA_HOME

# Extract
tar --no-same-owner -xv --gzip -f $SRC -C $XDG_DATA_HOME "WarThunder/launcherr.dat"
bsdtar --no-same-owner -xv  -f "$XDG_DATA_HOME/WarThunder/launcherr.dat" -C "/app/extra/" version.txt

# Clean up
rm -rf $XDG_DATA_HOME
