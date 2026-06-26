#!/bin/bash

# Configuration
LOG_DIR="/var/log"
BACKUP_DIR="/home/penguin/backup"
MASTER_LOG="/var/log/master_deployment.log"
DATE_STAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="logs_older_than_7days_${DATE_STAMP}.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

echo "[$(date)] Starting log cleanup and backup..." >> "$MASTER_LOG"

# 1. Find logs older than 7 days, filter out directories, and compress them
# Note: We target *.log and *.log.1 files.
find "$LOG_DIR" -maxdepth 2 -type f \( -name "*.log" -o -name "*.log.1" \) -mtime +7 -print0 | \
tar -cvzf "${BACKUP_DIR}/${ARCHIVE_NAME}" --null -T - >> "$MASTER_LOG" 2>&1

# 2. Check if the tar command succeeded
if [ $? -eq 0 ] && [ -f "${BACKUP_DIR}/${ARCHIVE_NAME}" ]; then
    echo "[$(date)] SUCCESS: Old logs packed into ${BACKUP_DIR}/${ARCHIVE_NAME}" >> "$MASTER_LOG"
    
    # 3. Safely delete the files that were just backed up
    find "$LOG_DIR" -maxdepth 2 -type f \( -name "*.log" -o -name "*.log.1" \) -mtime +7 -delete
    echo "[$(date)] SUCCESS: Original files older than 7 days purged." >> "$MASTER_LOG"
else
    echo "[$(date)] FAILURE: Failed to create log archive or no files matched criteria." >> "$MASTER_LOG"
    exit 1
fi