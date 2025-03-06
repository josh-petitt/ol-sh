#!/bin/bash

# sys.sh - A script to display overall system information

# Display hostname
echo "# System"
echo "Hostname: $(hostname)"

# Display OS and kernel version
echo "OS and Kernel: $(uname -o) $(uname -r)"

# Display uptime
echo "Uptime: $(uptime -p)"

# Display memory usage
echo "# Memory"
echo "Free: $(free -h)"

# Display disk usage
echo "# Disk"
echo "Disk Free: $(df -h)"

# Display CPU information
echo "# CPU"
lscpu | grep 'Model name\|Architecture\|CPU(s)'

# Display network information
echo "# Network"
ip -brief address
ip -s link

echo "# Users"
cat /etc/passwd

echo "# Groups"
cat /etc/group
