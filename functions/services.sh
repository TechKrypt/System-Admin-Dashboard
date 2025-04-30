#!/bin/bash

service_management() {
    echo "===== Service Management ====="
    echo "1. List all services"
    echo "2. Start a service"
    echo "3. Stop a service"
    echo "4. Restart a service"
    read -p "Choose an option [1-4]: " svc

    case $svc in
        1)
            systemctl list-units --type=service
            echo "$(date): Listed all services" >> "$LOG_FILE"
            ;;
        2)
            read -p "Enter service name to start: " s
            sudo systemctl start "$s"
            echo "$(date): Started service $s" >> "$LOG_FILE"
            ;;
        3)
            read -p "Enter service name to stop: " s
            sudo systemctl stop "$s"
            echo "$(date): Stopped service $s" >> "$LOG_FILE"
            ;;
        4)
            read -p "Enter service name to restart: " s
            sudo systemctl restart "$s"
            echo "$(date): Restarted service $s" >> "$LOG_FILE"
            ;;
        *)
            echo "Invalid Option"
            ;;
    esac

    read -p "Press Enter to return to menu..."
}
