#!/usr/bin/env sh

docker build -f Dockerfile.quanterall-web-development \
  -t gonz/quanterall-web-development:lts-16.31 \
  -t gonz/quanterall-web-development:latest \
  .

if [ $? -eq 0 ]; then
    docker push gonz/quanterall-web-development:lts-16.31
    docker push gonz/quanterall-web-development:latest
else
    echo "Build failed, will not push new versions."
fi