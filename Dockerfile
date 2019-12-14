FROM node:alpine
LABEL description="Docker image for https://semantic-release.gitbook.io/semantic-release/"

ARG ARG_SR_VERSION=''
ARG ARG_SR_EXEC_VERSION=''

ENV SR_VERSION=$ARG_SR_VERSION SR_EXEC_VERSION=$ARG_SR_EXEC_VERSION

RUN true \
  && echo "Installing semantic-release$SR_VERSION and @semantic-release/exec$SR_EXEC_VERSION" \
  && apk --no-cache add git openssh \
  && npm install -g \
    semantic-release$SR_VERSION \
    @semantic-release/exec$SR_EXEC_VERSION \
  && npm cache clean --force \
  && mkdir /opt/cwd \
  && true

WORKDIR /opt/cwd
CMD [ "semantic-release" ]