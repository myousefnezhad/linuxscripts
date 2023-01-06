sudo docker pull postgres

sudo docker run --name postgres-server -p 5432:5432 -e POSTGRES_PASSWORD=P@SsW0rD -e PGDATA=/var/lib/postgresql/data/pgdata -v /postgresql:/var/lib/postgresql/data --restart always -d postgres

sudo touch /postgresql/servers.json

sudo docker run -p 5050:80 -e 'PGADMIN_DEFAULT_EMAIL=admin@admin.com' -e 'PGADMIN_DEFAULT_PASSWORD=P@SsW0rD'  --mount type=bind,source=/postgresql/servers.json,destination=/pgadmin4/servers.json -d dpage/pgadmin4

sudo docker exec -t postgres-server pg_dump -c test -U postgres > dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql

sudo docker exec -t postgres-server pg_dumpall -c -U test > dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql

cat dump_19-10-2021_19_57_15.sql  | sudo docker exec -i postgres-server psql -U postgres -d test1



sudo docker run --name postgres-server -p 5432:5432 -e POSTGRES_PASSWORD=P@SsW0rD -e PGDATA=/var/lib/postgresql/data/pgdata -v /DATA22/postgresql:/var/lib/postgresql/data -e LANGUAGE="en_US.UTF-8" -e LANG="en_US.UTF-8" -e LC_ALL="en_US.UTF-8" -e TZ="America/Edmonton" -e PGTZ="America/Edmonton" -e TIMEZONE="America/Edmonton" --restart always -d postgres:alpine

