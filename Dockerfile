# For getmiaoss project
# @version 1.0

ARG PYVER
FROM node:${PYVER}
LABEL maintainer="chariothy@gmail.com"

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ARG TARGETPLATFORM
ARG BUILDPLATFORM

LABEL maintainer="chariothy" \
  org.opencontainers.image.created=$BUILD_DATE \
  org.opencontainers.image.url="https://github.com/chariothy/node-dev-docker.git" \
  org.opencontainers.image.source="https://github.com/chariothy/node-dev-docker.git" \
  org.opencontainers.image.version=$VERSION \
  org.opencontainers.image.revision=$VCS_REF \
  org.opencontainers.image.vendor="chariothy" \
  org.opencontainers.image.title="node-dev" \
  org.opencontainers.image.description="Docker for node with node-dev" \
  org.opencontainers.image.licenses="MIT"

RUN npm install node-dev -g
WORKDIR /usr/src/app

CMD [ "node" ]