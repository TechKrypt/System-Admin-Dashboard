#!/bin/bash

network_info() {
   echo "===== View Network Information ====="
   echo "IP Address:"
   ip a | grep inet
   echo "Active Network Connections"
   ss -tuln
   read -p "Press Enter to return to menu....."
}

echo "$(date): Viewed network info" >> "$LOG_FILE"
