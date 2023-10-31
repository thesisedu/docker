#!/usr/bin/env sh

set -e

docker build . -t thesisedu/businessu-postgres:build
docker tag thesisedu/businessu-postgres:build ghcr.io/thesisedu/docker/businessu-postgres:latest
docker push ghcr.io/thesisedu/docker/businessu-postgres:latest
