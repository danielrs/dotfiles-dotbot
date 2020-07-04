#!/usr/bin/env sh

# See: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -e -u

# if command -v ansible &>/dev/null; then
#     echo "Ansible already installed"
#     exit 0
# fi

if ! command -v pip &>/dev/null; then
    echo "pip not found"
    exit 1
fi

pip install --upgrade ansible

