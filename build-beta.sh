#!/bin/bash
true \
  && docker build --squash . \
    -t semantic-release:beta \
    --build-arg DEPS=./deps-beta \
  && true
