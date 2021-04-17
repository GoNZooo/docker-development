#!/usr/bin/env sh

docker build -f Dockerfile.quanterall-web-development \
  -t gonz/quanterall-web-development:lts-16.31 \
  -t gonz/quanterall-web-development:latest \
  .
docker push gonz/quanterall-web-development:lts-16.31
docker push gonz/quanterall-web-development:latest