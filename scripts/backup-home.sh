#!/bin/bash

set -e

BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="home_backup_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

echo "Creating backup..."
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" \
    --exclude="$HOME/backups" \
    --exclude="$HOME/.cache" \
    "$HOME/Documents" \
    "$HOME/Desktop" \
    "$HOME/Downloads" 2>/dev/null || true

echo "Backup created at: $BACKUP_DIR/$ARCHIVE_NAME"