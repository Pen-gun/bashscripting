#! /usr/bin/bash

# container name
CONTAINER_NAME="pihole"

# Check if the container is running

check=$(docker ps --filter "name=$CONTAINER_NAME" --filter "status=running" --format '{{.Names}}')
current_time=$(date)

# Condition to check

if [ -n "$check" ]; then
	run="$current_time: $check  is running"
else
	if docker start "$CONTAINER_NAME" > /dev/null 2>&1; then
        run="$current_time: $CONTAINER_NAME has been started successfully"
    else
        run="$current_time: Failed to start $CONTAINER_NAME"
    fi
fi
LOG_FILE="/home/penguin/desktop/bashScripting/pihole-monitoring/pihole.log"
echo "$run" >> "$LOG_FILE" 