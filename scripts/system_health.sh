#!/bin/bash

echo "===== System Report ====="

echo "Hostname      : $(hostname)"

echo "Current User  : $(whoami)"

echo "Current Date  : $(date)"

echo "Uptime        : $(uptime -p)"

echo "Memory Usage"
free -h

echo ""

echo "Disk Usage"
df -h

echo ""

echo "Logged In Users"
who
