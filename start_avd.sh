#@ Md Wahiduzzaman Emon (Software Engineer)

#!/bin/bash

# Function to list AVDs
list_avds() {
    if [ "$(uname)" == "Darwin" ]; then
        avd_list=$(emulator -list-avds 2>&1 | awk '/^[a-zA-Z0-9_]+$/')
    elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
        avd_list=$(emulator -list-avds 2>&1 | findstr /R /C:"^[a-zA-Z0-9_]*$")
    else
        echo "Unsupported operating system."
        exit 1
    fi
}

# List all AVDs
list_avds

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
        if [ "$(uname)" == "Darwin" ]; then
            emulator -avd "$avd"
        elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
            emulator @"$avd"
        else
            echo "Unsupported operating system."
            exit 1
        fi
        break
    else
        echo "Invalid selection. Please try again."
    fi
done
