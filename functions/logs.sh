#!/bin/bash

log_analysis() {
   echo "===== log Analysis ====="
   echo "1. View latest system logs"
   echo "2. Search for a keyword"
   read -p "Choose an option [1-2]: " log_choice

   case $log_choice in
     1) 
        sudo journalctl -n 20 
        echo "$(date): Viewed system logs" >> "$LOG_FILE"
        ;;

     2) 
        read -p "Enter a search term: " keyword; sudo journalctl | grep "$keyword"
        echo "$(date): searched for keywords '$keyword'" >> "$LOG_FILE"
        ;;

     *) echo "Invalid option" ;;
   esac

   read -p "Press Enter to return to menu....."
}
