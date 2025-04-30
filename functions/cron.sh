#!/bin/bash

cron_scheduler() {
   LOG_FILE="./logs/actions.log"
   echo "===== Cron Scheduler ====="
   echo "1. View Crontab"
   echo "2. Edit Crontab"
   read -p "Choose an option [1-2]: " cron_opt

   case $cron_opt in
     1)
        crontab -l
        echo "$(date): Viewed Crontab" >> "$LOG_FILE" ;;
     2) 
        crontab -e
        echo "$(date): Edited Crontab" >> "$LOG_FILE" ;;
     *)
        echo "Invalid Option"
        echo "$(date): Invalid option selected" >> "$LOG_FILE" ;;
   esac
   read -p "Press Enter to return to menu..."
}
