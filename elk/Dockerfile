FROM docker.elastic.co/elasticsearch/elasticsearch:7.1.0

COPY elasticsearch-analysis-ik-7.1.0.zip /usr/share/elasticsearch/elasticsearch-analysis-ik-7.1.0.zip

RUN mkdir /usr/share/elasticsearch/plugins/ik \
&& unzip /usr/share/elasticsearch/elasticsearch-analysis-ik-7.1.0.zip -d /usr/share/elasticsearch/plugins/ik

EXPOSE 9200
EXPOSE 9300

# NTRYPOINT [ "/usr/share/elasticsearch/bin/elasticsearch" ]