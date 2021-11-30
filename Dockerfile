FROM docker.elastic.co/logstash/logstash:7.7.1

COPY conf/opt/* /opt/
COPY bin/docker-entrypoint /usr/local/bin/
RUN ls -lha /usr/local/bin/docker-entrypoint

CMD ["-f", "/opt/es.conf"]
