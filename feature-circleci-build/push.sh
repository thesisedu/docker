#!/usr/bin/env sh

set -e

docker build . -t thesisedu/feature-circleci-build:build
docker tag thesisedu/feature-circleci-build:build ghcr.io/thesisedu/docker/feature-circleci-build:latest
docker push ghcr.io/thesisedu/docker/feature-circleci-build:latest
