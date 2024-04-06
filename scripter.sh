#!/bin/bash

# Start date
start_date="2024-01-01"
current_date=$start_date

# Loop for 365 days
for (( i=1; i<=365; i++ )); do
    # Create a file with the current date as the filename
    touch "${current_date}.txt"

    # Set the Git committer date and make a commit
    GIT_COMMITTER_DATE="$current_date 14:00 2011 +0100" git commit --amend --no-edit --date="$current_date 14:00:00"

    # Move to the next day
    current_date=$(date -d "$current_date +1 day" +"%Y-%m-%d")
done

