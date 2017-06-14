#!/usr/bin/env bash

set -euf -o pipefail

RELEASE=1.18.1.5

echo "> building release: $RELEASE"

rocker build -var "version=${RELEASE}" "$@"

