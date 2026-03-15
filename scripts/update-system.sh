#!/bin/bash

set -e

echo "Updating system packages..."

if command -v dnf >/dev/null 2>&1; then
    sudo dnf upgrade -y
elif command -v apt >/dev/null 2>&1; then
    sudo apt update && sudo apt upgrade -y
elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -Syu --noconfirm
else
    echo "Unsupported package manager."
    exit 1
fi

echo "System update complete."