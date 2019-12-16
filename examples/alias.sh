semantic-release() {
  NPM_TOKEN=${NPM_TOKEN:-""}
  GH_TOKEN=${GH_TOKEN:-""}
  echo "docker run --rm -v $(pwd):/opt/cwd --env NPM_TOKEN --env GH_TOKEN -ti semantic-release semantic-release $@"
  docker run --rm -v $(pwd):/opt/cwd --env NPM_TOKEN --env GH_TOKEN -ti semantic-release semantic-release $@
}

semantic-release-beta() {
  NPM_TOKEN=${NPM_TOKEN:-""}
  GH_TOKEN=${GH_TOKEN:-""}
  echo "docker run --rm -v $(pwd):/opt/cwd --env NPM_TOKEN --env GH_TOKEN -ti semantic-release:beta semantic-release $@"
  docker run --rm -v $(pwd):/opt/cwd --env NPM_TOKEN --env GH_TOKEN -ti semantic-release:beta semantic-release $@
}
