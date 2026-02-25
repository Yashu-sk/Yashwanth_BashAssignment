#!/bin/bash

# Backup Script with Timestamp

echo "===== Backup Script ====="

read -p "Enter directory name to backup: " dirname

if [ ! -d "$dirname" ]; then
    echo "Directory does not exist."
    exit 1
fi

timestamp=$(date +"%Y%m%d_%H%M%S")

backup_name="${dirname}_backup_$timestamp.tar.gz"

tar -czf "$backup_name" "$dirname"

echo "Backup created successfully: $backup_name"
