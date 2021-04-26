#!/usr/bin/env sh

docker build -f Dockerfile.quanterall-application-development \
  -t gonz/quanterall-application-development:lts-16.31 \
  -t gonz/quanterall-application-development:latest \
  .

if [ $? -eq 0 ]; then
    docker push gonz/quanterall-application-development:lts-16.31
    docker push gonz/quanterall-application-development:latest
else
    echo "Build failed, will not push new versions."
fi