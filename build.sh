#!/usr/bin/env bash

IMAGE_NAME=himenon/circle-ci-k8s

docker build . -t ${IMAGE_NAME}:latest

# Push
# docker login
# docker push himenon/circle-ci-k8s:latest