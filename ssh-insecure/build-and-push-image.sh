#!/usr/bin/env bash

set -euxo pipefail

echo "building image..."
docker buildx build -t groverweb/ubuntu-ssh:22.04-insecure .

echo "pushing image..."
docker push groverweb/ubuntu-ssh:22.04-insecure

echo "done!"