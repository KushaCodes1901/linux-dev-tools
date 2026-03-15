#!/bin/bash

set -e

echo "Starting developer tools installation..."

if command -v dnf >/dev/null 2>&1; then
    echo "Detected DNF-based distro."
    sudo dnf install -y git curl wget vim nano python3 python3-pip nodejs npm htop neofetch fastfetch unzip zip
elif command -v apt >/dev/null 2>&1; then
    echo "Detected APT-based distro."
    sudo apt update
    sudo apt install -y git curl wget vim nano python3 python3-pip nodejs npm htop neofetch unzip zip
elif command -v pacman >/dev/null 2>&1; then
    echo "Detected Pacman-based distro."
    sudo pacman -Sy --noconfirm git curl wget vim nano python python-pip nodejs npm htop neofetch unzip zip
else
    echo "Unsupported package manager."
    exit 1
fi

echo "Developer tools installed successfully."