#!/bin/bash
NAME=$1 # Gets the username folder 
SOUR="/mnt/c/Users/$NAME/AppData/Local/LGHUB"
DEST="/mnt/c/Users/$NAME/Google Drive/LGHUB"
# If it can navegate to the Destination folder
if cd "$DEST" ; then
	# If it finds the settings file then make a back up of it before overwriting it
    if [ -f "$DEST"/settings.json ]; then
		echo "---------------------------------------" >> "$DEST"/Logs/rsync_log.txt
		echo $(date) "- Backup Job" >> "$DEST"/Logs/rsync_log.txt
        rsync -cv "$DEST"/settings.json "$DEST"/Backup --log-file="$DEST"/Logs/rsync_log.txt
        echo "Backup Job Ran" >> "$DEST"/Logs/rsync_log.txt
    else
		echo "---------------------------------------" >> "$DEST"/Logs/rsync_log.txt
        echo $(date) "- No Settings File to Backup" >> "$DEST"/Logs/rsync_log.txt
    fi
	# Make a copy in the cloud of the settings file
	echo "---------------------------------------" >> "$DEST"/Logs/rsync_log.txt
	echo $(date) "- Local To Remote Job" >> "$DEST"/Logs/rsync_log.txt
    rsync -cv "$SOUR"/settings.json "$DEST" --log-file="$DEST"/Logs/rsync_log.txt
	echo "Local to Remote Job Ran" >> "$DEST"/Logs/rsync_log.txt
else
	echo "---------------------------------------" >> "$DEST"/Logs/rsync_log.txt
    echo $(date) "- No Destination Folder" >> "$DEST"/Logs/rsync_log.txt
fi