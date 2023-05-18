LOG_FILE_FORMAT=$(date +%Y.%m.pgsql.txt)
LOG_PATH="/IRONMAN/logs/$LOG_FILE_FORMAT"
echo $(date +%Y/%m/%d_%a_%H:%M:%S)  START >> "$LOG_PATH"
pg_dump -U postgres -h 172.25.50.11 medai | gzip > /IRONMAN21/BackupPostgreSQL/medai_`date +%Y-%m-%d-%H-%M-%S`.sql.gz
find /IRONMAN21/BackupPostgreSQL/. -mtime +7 | xargs rm -f
echo $(date +%Y/%m/%d_%a_%H:%M:%S)  END >> "$LOG_PATH"
