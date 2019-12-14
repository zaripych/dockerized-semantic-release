# Docker image for semantic-release

Docker image for [semantic-release](https://semantic-release.gitbook.io/semantic-release/) with embedded plugins and `semantic-release@beta`.

Included plugins:

- `@semantic-release/exec`

# Running

Latest build version:

```sh
$ docker run --rm -v $(pwd):/opt/cwd --env NPM_TOKEN --env GH_TOKEN -ti zaripych/semantic-release
```

for `@beta`:

```sh
$ docker run --rm -v $(pwd):/opt/cwd --env NPM_TOKEN --env GH_TOKEN -ti zaripych/semantic-release:beta
```

> Please note that `semantic-release` will require access to environment variables specific to your CI environment. Have a look at https://github.com/pvdlg/env-ci to understand which environment variables should be shared for your specific CI.

A little bash script to help with GitHub Actions or Travis:

```sh
#!/bin/bash
set -x
GITHUB_VARS=( $(env | grep GITHUB_) )
TRAVIS_VARS=( $(env | grep TRAVIS_) )
docker run --rm -v $(pwd):/opt/cwd -ti \
  --env NPM_TOKEN \
  --env GH_TOKEN \
  ${GITHUB_VARS[@]/#/"--env "} \
  ${TRAVIS_VARS[@]/#/"--env "} \
  zaripych/semantic-release \
  semantic-release $@
```

which later can be run as:

```sh
./semant-release.sh --dry-run
```
