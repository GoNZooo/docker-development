#!/usr/bin/env sh

docker build -f Dockerfile.quanterall-application-development \
  -t gonz/quanterall-application-development:lts-16.31 \
  -t gonz/quanterall-application-development:latest \
  .
docker push gonz/quanterall-application-development:lts-16.31
docker push gonz/quanterall-application-development:latest