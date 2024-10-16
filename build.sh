#!/bin/sh
# /net/imladris/export/home/raistlin/World/Vincent/Code/GIT/docker-nexus3-scripts/build.sh

NEXUS_GIT_DIR=/root/docker-nexus3
NEXUS_VERSION=3.72.0
NEXUS_DOCKERFILE=Dockerfile.rh.ubi.java17

#
cd ${NEXUS_GIT_DIR} || exit 127

git reset --hard
git pull
git checkout ${NEXUS_VERSION}

# Workaround
sed -i -e 's/ gzip//g' ${NEXUS_DOCKERFILE}

# Build
IMAGE_NAME=krynn-nexus3
docker build -f ${NEXUS_DOCKERFILE} -t ${IMAGE_NAME}:${NEXUS_VERSION} .
docker build -f ${NEXUS_DOCKERFILE} -t ${IMAGE_NAME} .
