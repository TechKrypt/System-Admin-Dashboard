#!/bin/bash

system_update() {
   echo "===== View System Updates ====="
   echo "$(date): Checked for system updates" >> "$LOG_FILE"

   sudo apt update

   read -p "Apply Updates? (y/n): " ans
   if [[ "$ans" == "y" ]]; then
   sudo apt upgrade -y
    echo "$(date): Applied system updates" >> "$LOG_FILE"

   else
     echo "Update Cancelled"
     echo "$(date): Cancelled system updates" >> "$LOG_FILE"
   fi

   read -p "Press Enter to return to menu"
}
