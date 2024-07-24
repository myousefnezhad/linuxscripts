LOG_FILE_FORMAT=$(date +%Y.%m.yousefnejad.txt)
LOG_PATH="/IRONMAN/logs/$LOG_FILE_FORMAT"
echo $(date +%Y/%m/%d_%a_%H:%M:%S)  START >> "$LOG_PATH"
rclone -v sync /IRONMAN/Documents/myDocs gmail:/Datageddon/myDocs | logger
rclone -v sync /IRONMAN/Documents/Topics gmail:/Datageddon/Topics | logger
rclone -v sync /IRONMAN1/Backups         gmail:/Database.Backups
echo $(date +%Y/%m/%d_%a_%H:%M:%S)  END >> "$LOG_PATH"

