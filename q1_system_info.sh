#!/bin/bash

echo "===== System Information ====="

echo "Hostname:"
hostname

echo "----------------------------"

echo "Current User:"
whoami

echo "----------------------------"

echo "Current Date and Time:"
date

echo "----------------------------"

echo "Uptime:"
uptime

echo "----------------------------"

echo "Memory Usage:"
free -h

echo "----------------------------"

echo "Disk Usage:"
df -h
