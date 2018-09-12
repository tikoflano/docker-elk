ARG ELK_VERSION

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:${ELK_VERSION}

RUN mkdir -p /usr/share/logstash/data/plugins/inputs/file
RUN chown -R logstash:logstash /usr/share/logstash/data/plugins
VOLUME /usr/share/logstash/data/plugins/inputs/file

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json
