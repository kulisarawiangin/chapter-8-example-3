#!/bin/bash
#
# Publishes a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   REGISTRY_UN - User name for your container registry.
#   REGISTRY_PW - Password for your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/push-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

echo CxPqfE+YaRDAL4KrNZk1whnGXeIXfgiQQx6HuWl4Vf+ACRDaEzl6 | docker login chap08 --username chap08 --password-stdin
docker push chap08.azurecr.io/video-streaming:1
