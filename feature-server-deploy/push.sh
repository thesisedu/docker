#!/usr/bin/env sh

VERSION="$1"
if [[ -z "$VERSION" ]]; then
  echo "must pass version"
  exit 1
fi

set -e

docker build . -t thesisedu/feature-server-deploy:build
docker tag thesisedu/feature-server-deploy:build ghcr.io/thesisedu/docker/feature-server-deploy:$VERSION
docker push ghcr.io/thesisedu/docker/feature-server-deploy:$VERSION
