#!/usr/bin/env bash

set -euxo pipefail

echo "building image..."
docker buildx build -t groverweb/ubuntu-ssh:vscode .

echo "pushing image..."
docker push groverweb/ubuntu-ssh:vscode

echo "done!"