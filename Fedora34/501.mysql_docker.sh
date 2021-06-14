sudo dns install docker docker-compose
sudo systemctl enable docker
sudo systemctl start  docker
sudo docker pull mysql:latest
sudo docker pull phpmyadmin/phpmyadmin
sudo docker run -d --name mysql-server -v mysql-data:/var/lib/mysql --network=phpmyadmin-network -e "MYSQL_ROOT_PASSWORD=P@SsW0rD" -p 6033:3306 --restart always mysql:latest
sudo docker run -d --name phpmyadmin -p 8081:80 --network phpmyadmin-network -e PMA_HOST=mysql-server --restart always phpmyadmin/phpmyadmin
#sudo mkdir -p /etc/docker_mysql/
#sudo cp ../ymls/mysql.yml /etc/docker_mysql/docker-compose.yml
#sudo cp ../services/docker-mysql.service  /etc/systemd/system/.
#sudo systemctl enable docker-mysql
#sudo systemctl start  docker-mysql
