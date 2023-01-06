#sudo docker pull redis

#sudo docker run --name myredis -v /redis:/data -p 63791:6379 -d redis  redis-server --save 60 1 --loglevel warning --restart always


docker run -d \
  -h redis \
  -e REDIS_PASSWORD=P@SsW0rD \
  -v redis-data:/data \
  -p 6379:6379 \
  --name redis \
  --restart always \
  redis:alpine /bin/sh -c 'redis-server --appendonly yes --requirepass ${REDIS_PASSWORD}'
