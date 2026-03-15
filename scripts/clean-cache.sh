#!/bin/bash

set -e

echo "Cleaning user cache..."
rm -rf "$HOME/.cache/"*

echo "Cleaning temporary files..."
sudo rm -rf /tmp/*

echo "Cache cleanup complete."