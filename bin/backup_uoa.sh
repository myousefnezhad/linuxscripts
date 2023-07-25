LOG_FILE_FORMAT=$(date +%Y.%m.uoa.txt)
LOG_PATH="/IRONMAN/logs/$LOG_FILE_FORMAT"
echo $(date +%Y/%m/%d_%a_%H:%M:%S)  START >> "$LOG_PATH"
rclone -v sync /IRONMAN/Documents/Topics uoa:/Topics
rclone -v sync /IRONMAN/Datasets.bak     uoa:/Datasets.bak
#rclone -v sync /IRONMAN21/BackupPostgreSQL  uoa:/BackupPostgreSQL
echo $(date +%Y/%m/%d_%a_%H:%M:%S)  END >> "$LOG_PATH"
