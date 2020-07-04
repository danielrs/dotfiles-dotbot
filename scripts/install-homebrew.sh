#!/usr/bin/env sh

# See: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -e -u

# Skip if not on Darwin or already installed

if [ ! `uname` = Darwin ]; then
    echo "Not a Darwin system"
    exit 0
fi

if command -v brew &>/dev/null; then
    echo "Homebrew already installed"
    exit 0
fi

# Download and install silently

HOMEBREW_URL='https://raw.githubusercontent.com/Homebrew/install/master/install.sh'
INSTALLER="./homebrew-installer.sh"

echo "Downloading Homebrew (latest)..."
curl -fsSL "$HOMEBREW_URL" -o "$INSTALLER"

echo "Installing..."
CI=1 bash "$INSTALLER"
rm "$INSTALLER"

