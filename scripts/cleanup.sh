#!/bin/bash

read -p "Enter Directory: " directory

read -p "Delete files older than (days): " days

find "$directory" -type f -mtime +$days -delete

echo "Old files deleted successfully."
