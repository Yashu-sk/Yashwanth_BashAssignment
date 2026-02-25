#!/bin/bash

# User Account Report Script

echo "===== User Account Report ====="

echo "Current Logged In Users:"
who

echo "----------------------------"

echo "Total Number of Users:"
cut -d: -f1 /etc/passwd | wc -l

echo "----------------------------"

echo "Users with UID 0 (Admin Users):"
awk -F: '$3 == 0 {print $1}' /etc/passwd

echo "----------------------------"

echo "Users with Bash Shell Access:"
grep "/bin/bash" /etc/passwd | cut -d: -f1

echo "----------------------------"

echo "Last Logged In Users:"
last | head -n 5
