ARG ELK_VERSION

# https://github.com/elastic/kibana-docker
FROM docker.elastic.co/kibana/kibana-oss:${ELK_VERSION}

ENV NODE_OPTIONS="--max-old-space-size=5000"

# Search Guard plugin
ARG ELK_VERSION
ARG SG_VERSION_KIBANA
ARG SENTINL_GIT_TAG

RUN kibana-plugin install https://repo1.maven.org/maven2/com/floragunn/search-guard-kibana-plugin/${ELK_VERSION}-${SG_VERSION_KIBANA}/search-guard-kibana-plugin-${ELK_VERSION}-${SG_VERSION_KIBANA}.zip

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>
RUN kibana-plugin install https://github.com/sirensolutions/sentinl/releases/download/tag-${SENTINL_GIT_TAG}/sentinl-v${ELK_VERSION}.zip