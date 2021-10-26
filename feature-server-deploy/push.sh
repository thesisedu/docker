#!/usr/bin/env sh

set -e

docker build . -t thesisedu/feature-server-deploy:build
docker tag thesisedu/feature-server-deploy:build ghcr.io/thesisedu/docker/feature-server-deploy:latest
docker push ghcr.io/thesisedu/docker/feature-server-deploy:latest
