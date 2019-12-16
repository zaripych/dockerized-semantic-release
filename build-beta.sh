#!/bin/bash
true \
  && docker build . \
    -t semantic-release:beta \
    --build-arg DEPS=./deps-beta \
  && true
