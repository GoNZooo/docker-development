#!/usr/bin/env sh

if [ -z $1 ]; then
    echo "First argument needs to be LTS number."
fi
SNAPSHOT="lts-$1"

if [ -z $2 ]; then
    echo "Second argument needs to be image name."
fi
IMAGE_NAME="$2"

if [ -z $3 ]; then
    echo "Third argument needs to be dockerfile to use."
fi
DOCKERFILE="$3"

IMAGE_NAME_WITH_SNAPSHOT="$IMAGE_NAME:$SNAPSHOT"
LATEST_IMAGE_NAME="$IMAGE_NAME:latest"

docker build -f "$DOCKERFILE" \
  -t "$IMAGE_NAME_WITH_SNAPSHOT" \
  -t "$LATEST_IMAGE_NAME" \
  .

if [ $? -eq 0 ]; then
    docker push "$IMAGE_NAME_WITH_SNAPSHOT"
    docker push "$LATEST_IMAGE_NAME"
else
    echo "Build failed, will not push new versions."
fi