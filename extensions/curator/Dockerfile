FROM alpine:3.8

ENV CURATOR_VERSION=${CURATOR_VERSION}

RUN apk --update add --no-cache tini python py-pip \
  && pip install elasticsearch-curator==${CURATOR_VERSION}

RUN echo "${CRON} /usr/bin/curator --config ${CONFIG_FILE} ${COMMAND}" >> /etc/crontabs/root

COPY entrypoint.sh /

WORKDIR /usr/share/curator
COPY config ./config

ENTRYPOINT ["/entrypoint.sh"]
