docker network create --driver bridge mongo-net

docker run -dit --network mongo-net  -p 27017:27017  -e 'MONGO_INITDB_ROOT_USERNAME=root' -e 'MONGO_INITDB_ROOT_PASSWORD=P@SsW0rD' -v /mongo:/data/db --restart always --name monogdb mongo

docker run -dit --network mongo-net -p 8082:8081 --name mongo-xpress -e 'ME_CONFIG_MONGODB_PORT=27017' -e 'ME_CONFIG_MONGODB_SERVER=monogdb' -e 'ME_CONFIG_MONGODB_AUTH_USERNAME=root' -e 'ME_CONFIG_MONGODB_AUTH_PASSWORD=P%40SsW0rD' -e 'ME_CONFIG_BASICAUTH_USERNAME=root' -e 'ME_CONFIG_BASICAUTH_PASSWORD=P@SsW0rD' --restart always mongo-express

docker logs --tail 50 --follow --timestamps mongo-xpress
