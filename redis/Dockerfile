FROM redis

COPY redis.conf /etc/redis/redis.conf

RUN ["mkdir", "/redis_data"]

CMD [ "redis-server", "/etc/redis/redis.conf" ]