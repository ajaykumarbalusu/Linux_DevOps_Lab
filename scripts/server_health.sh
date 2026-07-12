#!/bin/bash

echo "========== Server Health Report =========="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Current User:"
whoami

echo ""
echo "Current Date:"
date

echo ""
echo "System Uptime:"
uptime -p

echo ""
echo "CPU Load:"
uptime

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Top 5 Memory Consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -6

echo ""
echo "Top 5 CPU Consuming Processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6

echo ""
echo "Running Services:"
systemctl list-units --type=service --state=running | head -10

echo ""
echo "=========================================="
echo "Server Health Check Completed."
