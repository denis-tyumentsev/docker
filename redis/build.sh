#!/usr/bin/env bash

set -euf -o pipefail

# TODO: version detection

RELEASE=3.0.7

echo "> building release: $RELEASE"

rocker build -var "version=${RELEASE}" "$@"

