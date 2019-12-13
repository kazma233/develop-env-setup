FROM mongo

RUN mkdir ~/config

COPY mongo.conf ~/config/mongo.conf

ENTRYPOINT [ "mongod", "-f", "~/config/mongo.conf" ]