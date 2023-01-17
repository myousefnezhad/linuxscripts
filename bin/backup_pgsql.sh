pg_dump -U postgres -h 172.20.10.2 medai | gzip > /DATA21/BackupPostgreSQL/medai_`date +%Y-%m-%d-%H-%M-%S`.sql.gz
