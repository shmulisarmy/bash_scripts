#!/bin/bash
# Simple system information script

echo """




"""
echo "System Information"
echo "------------------"
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "Available Memory: $(free -h | awk 'NR==2 {print $4}')"
echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $5}') used"
echo "Available disk space:"
echo "---------------------"
df -h /
