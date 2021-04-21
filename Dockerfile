FROM docker.elastic.co/logstash/logstash:7.7.1

COPY conf/opt/* /opt/

CMD ["-f", "/opt/es.conf"]
