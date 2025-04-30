#!/bin/bash

# AUTHOR: VICTOR MENYUAH
# DATE: 04-30-2025

# Log File
LOG_FILE="logs/actions.log"

# Import functions
source functions/sys_info.sh
source functions/user_mgmt.sh
source functions/updates.sh
source functions/services.sh
source functions/processes.sh
source functions/network.sh
source functions/logs.sh
source functions/intrusion.sh
source functions/cron.sh
source functions/backups.sh

# Main Function Menu
main_menu() {
   while true; do
      clear
      echo "========== System Administration Dashboard =========="
      echo ""
      echo "1. System Information"
      echo "2. User Management"
      echo "3. Network Information"
      echo "4. Process Management"
      echo "5. Service Mnagement"
      echo "6. Log Analysis"
      echo "7. Backup & Restore"
      echo "8. System Updates"
      echo "9. Cron Scheduler"
      echo "10. Intrusion Detection"
      echo "0. Exit"
      echo ""
      echo "====================================================="
      read -p "Enter your choice [0-10]: " choice

      case $choice in
          1) system_info ;;
          2) user_mgmt ;;
          3) network_info ;;
          4) process_management ;;
          5) service_management ;;
          6) log_analysis ;;
          7) backup_restore ;;
          8) system_update ;;
          9) cron_scheduler ;;
          10) intrusion_detection ;;
          0) echo "Exiting....."; exit 0 ;;
          *) echo "Invalid choice!"; sleep 1;;
      esac
   done
}

# Starting Dashboard Now
main_menu
