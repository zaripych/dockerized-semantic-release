FROM node:alpine

ARG DEPS="./deps-stable"

COPY ${DEPS}/package-lock.json /opt/semantic-release/package-lock.json
COPY ${DEPS}/package.json /opt/semantic-release/package.json

RUN true \
  && apk --no-cache add git openssh bash docker-cli \
  && ls /opt/semantic-release \ 
  && cd /opt/semantic-release \
  && npm install --production \
  && npm cache clean --force \
  && ln -s /opt/semantic-release/node_modules/.bin/semantic-release /usr/bin/semantic-release \
  && mkdir /opt/cwd \
  && true

ENV PATH="/opt/cwd/node_modules/.bin:$PATH"

USER node
WORKDIR /opt/cwd
CMD [ "semantic-release" ]