#!/bin/bash
# Shell Script for Monitoring Memory Usage
# Usage: ./memory_monitor.sh

# Function to display memory usage
display_memory_usage() {
    echo "Current Memory Usage:"
    free -h
    echo ""
}

# Function to log memory usage with a timestamp every 10 seconds
log_memory_usage() {
    echo "Logging memory_usage every 2 seconds to memory_log.txt........"
    echo "Timestamp: $(date) - Memory Usage:" >> memory_log.txt
    while true; do
        echo "$(date) - $(free -h)" >> memory_log.txt
        sleep 2
    done
}

# Displaying options to the user
echo "Dynamic Memory Monitor"
echo "1. Display current memory usage"
echo "2. Log memory usage every 10 seconds"
echo "3. Exit"

# Loop until the user chooses to exit
while true; do
    read -p "Select an option (1-3): " option
    case $option in
        1) # Display current memory usage
            display_memory_usage
            ;;
        2) # Log memory usage every 10 seconds
            log_memory_usage
            ;;
        3) # Exit the script
            echo "Exiting the log. Goodbye!"
            exit 0
            ;;
        *) # Invalid option
            echo "Invalid option. Please select 1-3."
            ;;
    esac
    echo ""
done


	

