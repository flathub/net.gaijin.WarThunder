#!/bin/bash -e

SRC="/app/extra/wt.tar.gz"
XDG_DATA_HOME="/app/extra/tmp/"

# Setup
echo "Creating directory"
mkdir -p $XDG_DATA_HOME

# Extract
echo "Extracting launcherr.dat from wt.tar.gz"
bsdtar -xv --gzip -f $SRC -C $XDG_DATA_HOME "WarThunder/launcherr.dat"

echo "Extracting version.txt from launcher.dat"
bsdtar -f "$XDG_DATA_HOME/WarThunder/launcherr.dat" -d "/app/extra/" version.txt

# Clean up
echo "Cleaning up"
rm -rf $XDG_DATA_HOME
