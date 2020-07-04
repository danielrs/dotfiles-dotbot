#!/usr/bin/env sh

# See: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -e -u

INSTALLER="./miniconda-installer.sh"
PREFIX="$HOME/.miniconda3"

# Skip if already installed

if [ -d "$PREFIX" ]; then
    echo "Miniconda 3 already installed"
    exit 0
fi

# Detect system

if [ `uname` = Darwin ]; then
    MINICONDA_URL='https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh'

elif [ `uname` = Linux ]; then
    MINICONDA_URL='https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh'

else
    echo "Unable to detect system"
    exit 1
fi

# Download and install

echo "Downloading Miniconda 3 (latest)..."
curl -fsSL "$MINICONDA_URL" -o "$INSTALLER"

echo "Installing..."
sh "$INSTALLER" -b -p "$PREFIX"
rm "$INSTALLER"

