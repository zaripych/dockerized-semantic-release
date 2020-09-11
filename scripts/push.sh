#!/bin/bash
true \
  && STABLE_VERSION=$(node -p 'require("./deps-stable/package.json").dependencies["semantic-release"]') \
  && echo STABLE_VERSION=$STABLE_VERSION \
  && docker login -u=$DOCKER_USERNAME -p=$DOCKER_PASSWORD \
  && docker tag semantic-release zaripych/semantic-release \
  && docker tag semantic-release zaripych/semantic-release:$STABLE_VERSION \
  && docker push zaripych/semantic-release:latest \
  && docker push zaripych/semantic-release:$STABLE_VERSION \
  && true
