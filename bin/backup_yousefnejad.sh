LOG_FILE_FORMAT=$(date +%Y.%m.yousefnejad.txt)
LOG_PATH="/IRONMAN/logs/$LOG_FILE_FORMAT"
echo $(date +%Y/%m/%d_%a_%H:%M:%S)  START >> "$LOG_PATH"
rclone -v sync /IRONMAN/Documents/myDocs yousefnejad:/Armageddon/myDocs | logger
echo $(date +%Y/%m/%d_%a_%H:%M:%S)  END >> "$LOG_PATH"

