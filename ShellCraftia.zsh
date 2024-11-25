#!/usr/bin/env zsh

# Constants and Variables
SERVER_DIR="/home/d0lv3/Desktop/ShellCraftia/"
SCREEN_NAME="mc_server"
BACKUP_DIR="$SERVER_DIR/backups"  # Define backup directory

# Ensure backup directory exists
mkdir -p $BACKUP_DIR

# Functions
start_server() {
    if pgrep -x "bedrock_server" > /dev/null; then
        echo "The server is already running."
    else
        echo "Starting the Minecraft server..."
        cd $SERVER_DIR || { echo "Error: Cannot change to server directory."; return 1; }
        screen -dmS $SCREEN_NAME ./run_server.zsh
        echo "Server started in screen session '$SCREEN_NAME'."
    fi
}

stop_server() {
    echo "Stopping the Minecraft server..."
    screen -S $SCREEN_NAME -X quit
    echo "Server stopped."
}

check_status() {
    if pgrep -x "bedrock_server" > /dev/null; then
        echo "Server is running."
    else
        echo "Server is not running."
    fi
}

script_info() {
    echo "This script is made for completely managing a Minecraft server"
    echo "Version: 1.0"
    echo "Made By @d0lv3"
}

restart_server() {
    echo "Restarting Server..."
    stop_server
    start_server
}

backup_server() {
    local backup_name="backup_$(date +%F_%H-%M-%S)"
    echo "Creating backup..."
    tar -czf "$BACKUP_DIR/$backup_name.tar.gz" $SERVER_DIR/world/
    echo "Backup saved as $BACKUP_DIR/$backup_name.tar.gz"
}

# Main Menu
while true; do
    clear
    figlet "ShellCraftia v1.0"
    echo
    echo "Minecraft Server Management Script v1.0"
    echo "1) Start Server"
    echo "2) Stop Server"
    echo "3) Restart Server"
    echo "4) Check Server Status"
    echo "5) Backup Server"
    echo "6) Exit"
    echo "7) Script Info"
    echo -n "Select an option: "
    read choice

    case $choice in
        1) start_server ;;
        2) stop_server ;;
        3) restart_server ;;
        4) check_status ;;
        5) backup_server ;;
        6) echo "Goodbye!"; exit ;;
        7) script_info ;;
        *) echo "Invalid option, please try again." ;;
    esac

    echo
    echo -n "Press Enter to return to the menu..."
    read
done
