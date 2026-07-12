#!/bin/bash

logfile="/var/log/messages"

echo "===== Log Analyzer ====="

echo "Total Errors :"
grep -i "error" $logfile | wc -l

echo ""

echo "Total Warnings :"
grep -i "warning" $logfile | wc -l

echo ""

echo "Failed SSH Logins :"
grep "Failed password" /var/log/secure | wc -l
