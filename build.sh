true \
  && SR_VERSION=$(npm view semantic-release version) \
  && SR_EXEC_VERSION=$(npm view @semantic-release/exec version) \
  && ARG_SR_VERSION="@$SR_VERSION" \
  && ARG_SR_EXEC_VERSION="@$SR_EXEC_VERSION" \
  && docker build . \
    -t semantic-release \
    --build-arg ARG_SR_VERSION=$ARG_SR_VERSION \
    --build-arg ARG_SR_EXEC_VERSION=$ARG_SR_EXEC_VERSION \
  && true

