#!/bin/bash

echo "===== SYSTEM INFO ====="
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "OS: $(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo

echo "===== CPU ====="
lscpu | grep "Model name" | sed 's/Model name:[[:space:]]*//'
echo

echo "===== MEMORY ====="
free -h
echo

echo "===== DISK USAGE ====="
df -h /
echo

echo "===== GPU ====="
lspci | grep -i 'vga\|3d\|display' || echo "GPU info not found"
echo

echo "===== NETWORK ====="
ip a | grep inet