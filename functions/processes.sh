#!/bin/bash

process_management() {
   echo "===== View Process Management ====="
   echo "1. List top CPU consuming processes"
   echo "2. Kill a process"
   read -p "Choose an option [1-2]: " pm_choice

   case $pm_choice in
      1) ps aux --sort=-%cpu | head -n 5 ;;
      2) read -p "Enter Process ID to kill: " pid; sudo kill "$pid" ;;
      *) echo "Invalid option" ;;
   esac
   read -p "Press Enter to return to menu....."
}

echo "$(date): Viewed Process Management Info" >> "$LOG_FILE"
