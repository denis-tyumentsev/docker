#!/usr/bin/env bash

set -euf -o pipefail

if [ $# -eq 0 ]; then
  echo "No version provided!"
  echo "Usage: $0 <ruby-version>"

  exit 1
fi

RELEASE=$1

echo "> building release: $RELEASE"

rocker build -var "version=${RELEASE}"

