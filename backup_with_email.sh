#Backup destination
DEST="$HOME/Backups"

#Create backup directory if not exists
mkdir -p "$DEST"

#Backup filename with timestamp
FILENAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

#Create the backup 
tar -czf "$DEST/$FILENAME" -C "$SOURCE"

#Send email notification
TO="your_email@example.com"
SUBJECT="Backup Completed: $FILENAME"
BODY="Backup of $SOURCE completed at $(date).\nBackup file saved as: $DEST/$FILENAME"

echo -e "$BODY" | mail -s "$SUBJECT" "$TO"

echo "Backup of $SOURCE saved as $DEST/$FILENAME"
echo "Email notification sent to $TO"
