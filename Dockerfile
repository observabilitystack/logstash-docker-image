ARG LOGSTASH_VERSION
FROM docker.elastic.co/logstash/logstash-oss:${LOGSTASH_VERSION}

# install extra plugins needed
RUN bin/logstash-plugin install logstash-output-gelf && \
    bin/logstash-plugin install logstash-input-lumberjack && \
    bin/logstash-plugin install logstash-codec-json && \
    bin/logstash-plugin install logstash-codec-json_lines && \
    bin/logstash-plugin install logstash-codec-multiline && \
    bin/logstash-plugin install logstash-codec-line && \
    rm /usr/share/logstash/pipeline/logstash.conf
