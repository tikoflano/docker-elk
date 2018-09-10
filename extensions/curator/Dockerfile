FROM alpine:3.8

ARG CURATOR_VERSION
ARG CRON

RUN apk --update add --no-cache tini python py-pip \
  && pip install elasticsearch-curator==${CURATOR_VERSION}

RUN echo "${CRON} /usr/bin/curator --config /usr/share/curator/config/curator.yml /usr/share/curator/config/delete_log_files_curator.yml" >> /etc/crontabs/root

COPY entrypoint.sh /

WORKDIR /usr/share/curator
COPY config ./config

ENTRYPOINT ["/entrypoint.sh"]
