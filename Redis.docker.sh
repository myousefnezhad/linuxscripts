sudo docker pull redis

sudo docker run --name myredis -v /redis:/data -p 63791:6379 -d redis  redis-server --save 60 1 --loglevel warning --restart always
