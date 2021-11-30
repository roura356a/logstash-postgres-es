FROM docker.elastic.co/logstash/logstash:7.7.1

COPY conf/opt/* /opt/
COPY bin/docker-entrypoint /usr/local/bin/
RUN chmod 0755 /usr/local/bin/docker-entrypoint

CMD ["-f", "/opt/es.conf"]
