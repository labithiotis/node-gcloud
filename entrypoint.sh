#!/bin/sh
set -e
if [ -n "$GCLOUD_AUTH" ]; then
  echo "Authenticating gcloud..."
  echo "$GCLOUD_AUTH" | base64 --decode > "$HOME"/gcloud.json
  sh -c "gcloud auth activate-service-account --key-file=$HOME/gcloud.json"
fi
