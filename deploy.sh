#!/usr/bin/env bash

set -ex

# Build a new version of the image
docker build -t 8codes/datastore-emulator .

docker push 8codes/datastore-emulator
