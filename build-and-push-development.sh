#!/usr/bin/env sh

if [ -z $1 ]; then
    echo "First argument needs to be LTS number."
    exit 1
fi
LTS_VERSION="$1"
SNAPSHOT="lts-$LTS_VERSION"

./tag-build-and-push.sh $LTS_VERSION gonz/quanterall-development ./Dockerfile.quanterall-development-$SNAPSHOT