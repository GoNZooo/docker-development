#!/usr/bin/env sh

if [ -z $1 ]; then
    echo "First argument needs to be LTS number."
    exit 1
fi
LTS_VERSION="$1"
SNAPSHOT="lts-$LTS_VERSION"

./build-and-push-development.sh $LTS_VERSION && \
  ./build-and-push-application-development.sh $LTS_VERSION && \
  ./build-and-push-web-development.sh $LTS_VERSION