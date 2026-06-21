#! /usr/bin/bash

# container name
CONTAINER_NAME="pihole"

# Check if the container is running

check=$(docker ps --filter "name=$CONTAINER_NAME" --filter "status=running" --format '{{.Names}}')
Current_time=$(date)

# Condition to check

if [ -n "$check" ]; then
	run="$Current_time: $check  is running"
else
	docker start $CONTAINER_NAME
	run="$Current_time: $CONTAINER_NAME is starting"
fi
echo "$run" >> output.txt 