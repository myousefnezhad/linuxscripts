sudo docker run --name pgbouncer -e POSTGRESQL_PASSWORD=P@SsW0rD -e POSTGRESQL_HOST=ironman -p 6432:6432 --restart always -d bitnami/pgbouncer:latest
