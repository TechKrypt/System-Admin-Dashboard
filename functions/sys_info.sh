#!/bin/bash

system_info() {
   echo "===== View System Information ====="
   echo "OS Version: $(lsb_release -d | cut -f2)"
   echo "Kernel Version: $(uname -r)"
   echo "CPU Info:"
   lscpu | grep "Model Name"
   echo "Memory Usage:"
   free -h
   echo "Disk Usage:"
   df -h /
   read -p "Press Enter to return to menu....."
}

echo "$(date): Viewed system info" >> "$LOG_FILE"
