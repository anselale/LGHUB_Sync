#!/bin/bash
NAME=$1 # Gets the username folder
SOUR="/mnt/c/Users/$NAME/Google Drive/LGHUB"
DEST="/mnt/c/Users/$NAME/AppData/Local/LGHUB"
if [ -f "$SOUR"/settings.json ]; then
	# Restore the settings file from the cloud
	echo "---------------------------------------" >> "$SOUR"/Logs/rsync_log.txt
	echo $(date) "- Remote To Local Job" >> "$SOUR"/Logs/rsync_log.txt
    rsync -cv "$SOUR"/settings.json "$DEST" --log-file="$SOUR"/Logs/rsync_log.txt
	echo "Remote to Local Job Ran" >> "$SOUR"/Logs/rsync_log.txt
else
	echo "---------------------------------------" >> "$SOUR"/Logs/rsync_log.txt
    echo $(date) "- No Settings File to Restore" >> "$SOUR"/Logs/rsync_log.txt
fi