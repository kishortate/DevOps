#!/bin/bash

# Script to take the backup of files

# Assign command line arguments to variables
dir_to_backup=$1     # The directory that needs to be backed up
target_dir=$2        # The directory where the backup will be stored

# Get the current timestamp in a specific format for unique backup naming
timestamp=$(date '+%Y-%m-%d_%H-%M-%S')

# Create a new backup directory name based on the target directory and timestamp
dir_into_backup="${target_dir}/backup_${timestamp}"

# Function to create a backup
function create_backup {
    # Use zip to create a compressed backup of the specified directory
    zip -r "${dir_into_backup}.zip" "${dir_to_backup}" > /dev/null
    
    # Check if the zip command was successful
    if [ $? -eq 0 ]; then
        echo "Backup Created Successfully."
    else
        echo "Failed to create backup for $timestamp"
    fi
}

# Call the create_backup function
create_backup

# Function to perform backup rotation
function perform_rotation {
    # List all backup files sorted by modification time, most recent first
    all_backups=($(ls -t "$target_dir/backup_"*.zip))
    
    # Check if there are more than 5 backup files
    if [ "${#all_backups[@]}" -gt 5 ]; then
        # Determine which backups to remove (all but the most recent 5)
        backups_to_remove=("${all_backups[@]:5}")

        # Loop through the backups to remove and delete each one
        for backup in ${backups_to_remove[@]}; do
            rm $backup
        done
    fi
}

# Call the perform_rotation function to delete older backups
perform_rotation

