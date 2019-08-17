#!/bin/sh
set -e

GCLOUD_AUTH=$(cat ./auth.json | base64)

docker build . -t node-gcloud

docker run -e GCLOUD_AUTH="$GCLOUD_AUTH" node-gcloud gsutil --version
docker run -e GCLOUD_AUTH="$GCLOUD_AUTH" node-gcloud gcloud --version
