#!/bin/bash

# Simple Log Analyzer

echo "===== Log File Analyzer ====="

read -p "Enter log file name: " logfile

if [ ! -f "$logfile" ]; then
    echo "File does not exist."
    exit 1
fi

echo "Total Lines:"
wc -l < "$logfile"

echo "Total Words:"
wc -w < "$logfile"

echo "Total Characters:"
wc -c < "$logfile"

echo "Number of ERROR occurrences:"
grep -c "ERROR" "$logfile"

echo "Number of WARNING occurrences:"
grep -c "WARNING" "$logfile"
