FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.0

ENV ES_VERSION 7.6.0

ADD https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v$ES_VERSION/elasticsearch-analysis-ik-$ES_VERSION.zip /usr/share/elasticsearch/elasticsearch-analysis-ik-$ES_VERSION.zip

RUN mkdir /usr/share/elasticsearch/plugins/ik \
&& unzip /usr/share/elasticsearch/elasticsearch-analysis-ik-$ES_VERSION.zip -d /usr/share/elasticsearch/plugins/ik

EXPOSE 9200
EXPOSE 9300

# ENTRYPOINT [ "/usr/share/elasticsearch/bin/elasticsearch" ]