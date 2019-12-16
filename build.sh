#!/bin/bash
true \
  && docker build --squash . \
    -t semantic-release \
    --build-arg DEPS=./deps-stable \
  && true
