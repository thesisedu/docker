#!/usr/bin/env sh

VERSION="$1"
if [[ -z "$VERSION" ]]; then
  echo "must pass version"
  exit 1
fi

set -e

docker buildx build --platform linux/amd64 . -t thesisedu/feature-circleci-build:build
docker tag thesisedu/feature-circleci-build:build ghcr.io/thesisedu/docker/feature-circleci-build:$VERSION
docker push ghcr.io/thesisedu/docker/feature-circleci-build:$VERSION
