#!/bin/bash
true \
  && docker build . \
    -t semantic-release \
    --build-arg DEPS=./deps-stable \
  && true
