#!/usr/bin/env sh

docker build -f Dockerfile.quanterall-development \
  -t gonz/quanterall-development:lts-16.31 \
  -t gonz/quanterall-development:latest \
  .
docker push gonz/quanterall-development:lts-16.31
docker push gonz/quanterall-development:latest