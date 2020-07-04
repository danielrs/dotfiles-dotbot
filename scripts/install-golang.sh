#!/usr/bin/env sh

# See: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -e -u

ARCHIVE="./golang.tar.gz"
PREFIX="$HOME/.golang"

# Skip if already installed

if [ -d "$PREFIX" ]; then
    echo "Golang already installed"
    exit 0
fi

# Get latest golang version
# See: https://stackoverflow.com/a/57725365

VERSION=`curl -fsSL https://golang.org/VERSION?m=text`

# Detect system

if [ `uname` = Darwin ]; then
    GOLANG_URL="https://golang.org/dl/$VERSION.darwin-amd64.tar.gz"

elif [ `uname` = Linux ]; then
    GOLANG_URL="https://golang.org/dl/$VERSION.linux-amd64.tar.gz"

else
    echo "Unable to detect system"
    exit 1
fi

# Download and install

echo "Downloading Go ($VERSION)..."
curl -fsSL "$GOLANG_URL" -o "$ARCHIVE"

echo "Extracting archive..."
tar -xzf "$ARCHIVE"
mv ./go "$PREFIX"
rm "$ARCHIVE"

