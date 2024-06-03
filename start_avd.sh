#!/bin/bash

# List all AVDs and filter only the lines that contain AVD names
avd_list=$(emulator -list-avds 2>&1 | awk '/^[a-zA-Z0-9_]+$/')

# Check if there are any AVDs available
if [ -z "$avd_list" ]; then
    echo "No AVDs found."
    exit 1
fi

# Convert the AVD list to an array
IFS=$'\n' read -rd '' -a avd_array <<< "$avd_list"

# Display the list of AVDs
echo "Available AVDs:"
select avd in "${avd_array[@]}"; do
    if [ -n "$avd" ]; then
        echo "Starting AVD: $avd"
        emulator -avd "$avd"
        break
    else
        echo "Invalid selection. Please try again."
    fi
done
