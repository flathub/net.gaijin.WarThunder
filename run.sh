#!/bin/bash -e

# Extra data tar
SRC="/app/extra/wt.tar.gz"

# Allows for custom install location
DIR=${CUSTOM_DIR:-$XDG_DATA_HOME}

# Version files to compare
FLAT_VERSION="/app/extra/version.txt" # Extracted with apply_extra.sh
DATA_VERSION="${DIR}/WarThunder/version.txt"

# Extract
if [[ ! -f "$DATA_VERSION" ]] || [[ `cmp --silent "$FLAT_VERSION" "$DATA_VERSION"; echo $?` -ne 0 ]] ; then
	mkdir -p "${DIR}/WarThunder"
	cp -f "$FLAT_VERSION" "$DATA_VERSION"
	tar -xv --gzip -f "$SRC" -C "$DIR"
fi

COMMAND="${DIR}/WarThunder/launcher"

# Check for gamescope
if command -v gamescope &> /dev/null
then
	exec gamescope ${GAMESCOPE_ARGS:-""} -- gamemoderun $COMMAND
else
	exec gamemoderun $COMMAND
fi
