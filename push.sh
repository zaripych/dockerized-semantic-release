true \
  && docker login -u=$DOCKER_USERNAME -p=$DOCKER_PASSWORD \
  && docker tag semantic-release zaripych/semantic-release \
  && docker tag semantic-release:beta zaripych/semantic-release:beta \
  && docker push zaripych/semantic-release:latest \
  && docker push zaripych/semantic-release:beta \
  && true
