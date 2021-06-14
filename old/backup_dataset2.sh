if [ -d "/DATA91/Dataset2" ]
then
	echo "****" Start backup at $(date) >> /DATA/logs/backup_dataset2.txt
	rclone -v sync /DATA/Dataset2 /DATA91/Dataset2 	
	echo "****" Stop  backup at $(date) >> /DATA/logs/backup_dataset2.txt
else
	echo "####" Cannot find /DATA91 at $(date) >> /DATA/logs/backup_dataset2.txt
fi
