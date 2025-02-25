#!/bin/bash

# Basic Shell Script for Job Scheduling
# Usage: ./job_scheduler.sh <delay_in_seconds> "command1" "command2" ...

# Check if sufficient arguments are provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <delay_in_seconds> \"command1\" \"command2\" ..."
    exit 1
fi

# Get the delay from the first argument
delay=$1
shift # Remove the first argument so we can loop over commands

# Count the number of commands passed
num_commands=$#

# Execute each command with the specified delay
echo "Total number of commands: $num_commands"
for command in "$@"; do
    echo "$command"
    echo "Waiting for $delay seconds..."
    sleep "$delay" # Delay before executing the next command
done

echo "All $num_commands commands executed."
