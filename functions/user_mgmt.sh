#!/bin/bash

user_mgmt() {
    echo "===== User Management ====="
    echo "1. List all users"
    echo "2. Add a new user"
    echo "3. Delete a user"
    echo "4. Change user password"
    read -p "Choose an option [1-4]: " um_choice

    case $um_choice in
        1) 
            cut -d: -f1 /etc/passwd
            echo "$(date): Listed all users" >> "$LOG_FILE"
            ;;
        2) 
            read -p "Enter new username: " user
            sudo adduser "$user"
            echo "$(date): Added user $user" >> "$LOG_FILE"
            ;;
        3) 
            read -p "Enter username to delete: " user
            sudo deluser "$user"
            echo "$(date): Deleted user $user" >> "$LOG_FILE"
            ;;
        4) 
            read -p "Enter username to change password: " user
            sudo passwd "$user"
            echo "$(date): Changed password for user $user" >> "$LOG_FILE"
            ;;
        *) 
            echo "Invalid option..."
            ;;
    esac

    read -p "Press Enter to return to menu..."
}
