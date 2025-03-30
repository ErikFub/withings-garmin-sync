#!/bin/bash

# Create the logs directory if it doesn't exist
mkdir -p ./logs

# Run indefinitely
while true; do
  # Generate a timestamped log file
  LOG_FILE="./logs/withings_sync_$(date +%Y-%m-%d_%H-%M-%S).log"

  # Execute your Python script and log standard output and errors
  echo "Starting sync at $(date)"
  python3.11 withings_sync/sync.py >> "$LOG_FILE" 2>&1
  echo "Sync completed at $(date)"

  # Wait 3 hours before running again
  sleep 3h
done