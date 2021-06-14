if [ -d "/DATA90/Datasets" ]
then
	echo "****" Start backup at $(date) >> /DATA/logs/backup_datasets.txt
	rclone -v sync /DATA/Datasets /DATA90/Datasets
	echo "****" Stop  backup at $(date) >> /DATA/logs/backup_datasets.txt
else
	echo "####" Cannot find /DATA90 at $(date) >> /DATA/logs/backup_datasets.txt
fi
