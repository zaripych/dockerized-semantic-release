# Docker image for semantic-release

Docker image for [semantic-release](https://semantic-release.gitbook.io/semantic-release/) with embedded plugins.

Included plugins:

- `@semantic-release/exec`

Included packages

- Docker CLI, for being able to build docker images as part of release process
- bash, for @semantic-release/exec to work

# Running

Latest build version:

```sh
$ docker run --rm -v $(pwd):/opt/cwd --env NPM_TOKEN --env GH_TOKEN -ti zaripych/semantic-release
```

> Please note that `semantic-release` will require access to environment variables specific to your CI environment. Have a look at https://github.com/pvdlg/env-ci to understand which environment variables should be shared for your specific CI.

## Building Docker images using `semantic-release`

In order to use docker inside docker the recommended approach is to pass in `/var/run/docker.sock` when running:

```sh
$ docker run --rm -v $(pwd):/opt/cwd -v /var/run/docker.sock:/var/run/docker.sock -ti zaripych/semantic-release
```

This way the docker-cli within contain will have access to the host docker daemon.

## Examples

See `./examples` directory for example scripts/aliases that can be used to run `semantic-release`.
