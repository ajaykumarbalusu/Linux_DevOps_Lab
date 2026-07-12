#!/bin/bash

read -p "Enter Source Directory: " source

read -p "Enter Backup Directory: " backup

date=$(date +%Y-%m-%d)

tar -czf $backup/backup-$date.tar.gz $source

echo "Backup Completed Successfully."
