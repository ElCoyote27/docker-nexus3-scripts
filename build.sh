#!/bin/sh
# /net/imladris/export/home/raistlin/World/Vincent/Code/GIT/docker-nexus3-scripts/build.sh

NEXUS_GIT_DIR=/root/docker-nexus3
#NEXUS_VERSION=3.58.1
NEXUS_VERSION=3.63.0

#
cd ${NEXUS_GIT_DIR} || exit 127

git reset --hard
git checkout ${NEXUS_VERSION}

# Workaround
sed -i -e 's/ gzip//g' Dockerfile

# Build
IMAGE_NAME=krynn-nexus3
docker build -t ${IMAGE_NAME}:${NEXUS_VERSION} .
docker build -t ${IMAGE_NAME} .
