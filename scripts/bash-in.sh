#!/bin/bash
docker run --rm -v $(pwd):/opt/cwd -ti \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --entrypoint bash \
  semantic-release