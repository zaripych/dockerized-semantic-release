#!/bin/bash
set -x
GITHUB_VARS=( $(env | grep GITHUB_) )
TRAVIS_VARS=( $(env | grep TRAVIS_) )
docker run --rm -v $(pwd):/opt/cwd -ti \
  --env NPM_TOKEN \
  --env GH_TOKEN \
  ${GITHUB_VARS[@]/#/"--env "} \
  ${TRAVIS_VARS[@]/#/"--env "} \
  zaripych/semantic-release:beta \
  semantic-release $@