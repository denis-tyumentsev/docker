#!/usr/bin/env bash

set -euf -o pipefail

(cd ./src && git fetch --prune && git reset --hard origin/master)

RELEASE="$(cd ./src && git describe --tags)"

echo "> building release: $RELEASE"

rocker build -var "version=${RELEASE}" "$@"

