#!/bin/bash

backup_restore() {
    LOG_FILE="./logs/actions.log"
    echo "===== Backup & Restore ====="
    echo "1. Backup a directory"
    echo "2. Restore from backup"
    read -p "Choose an option [1-2]: " bkup

    case $bkup in
        1)
            read -p "Directory to backup: " dir
            read -p "Backup file name (without extension): " name
            tar -czf "$name.tar.gz" "$dir"
            echo "Backup saved as $name.tar.gz"
            echo "$(date): Backed up directory '$dir' to file '$name.tar.gz'" >> "$LOG_FILE"
            ;;
        2)
            read -p "Backup file to restore (with .tar.gz): " file
            read -p "Restore to directory: " dir
            mkdir -p "$dir"
            tar -xzf "$file" -C "$dir"
            echo "Restored to $dir"
            echo "$(date): Restored from backup file '$file' to directory '$dir'" >> "$LOG_FILE"
            ;;
        *)
            echo "Invalid option"
            echo "$(date): Invalid option selected in backup_restore" >> "$LOG_FILE"
            ;;
    esac
    read -p "Press Enter to return to menu..."
}


