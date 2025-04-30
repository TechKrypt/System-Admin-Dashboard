#!/bin/bash

intrusion_detection() {
    LOG_FILE="./logs/actions.log"
    echo "===== Intrusion Detection (chkrootkit) ====="
    
    # Log: Checking if chkrootkit is installed
    echo "$(date): Checking for chkrootkit..." >> "$LOG_FILE"
    
    if ! command -v chkrootkit &> /dev/null; then
        echo "chkrootkit not found. Installing..."
        echo "$(date): chkrootkit not found, installing..." >> "$LOG_FILE"
        sudo apt update && sudo apt install chkrootkit -y
        echo "$(date): Installed chkrootkit" >> "$LOG_FILE"
    fi
    
    echo "$(date): Running chkrootkit scan..." >> "$LOG_FILE"
    sudo chkrootkit

    echo "$(date): chkrootkit scan completed" >> "$LOG_FILE"

    read -p "Press Enter to return to menu..."
}
