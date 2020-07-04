#!/usr/bin/env sh

# See: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -e -u

SHELL_PATH="/usr/local/bin/fish"

echo "Changing shell to $SHELL_PATH"
chsh -s "$SHELL_PATH"

