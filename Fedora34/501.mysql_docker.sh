sudo mkdir -p /etc/docker_mysql/
sudo cp ../ymls/mysql.yml /etc/docker_mysql/docker-compose.yml
sudo cp ../services/docker-mysql.service  /etc/systemd/system/.
sudo systemctl enable docker-mysql
sudo systemctl start  docker-mysql
