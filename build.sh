#!/bin/sh
# /net/imladris/export/home/raistlin/World/Vincent/Code/GIT/docker-nexus3-scripts/build.sh

NEXUS_GIT_DIR=/usr/src/docker-nexus3
NEXUS_VERSION=3.77.1
NEXUS_DOCKERFILE=Dockerfile.rh.ubi.java17

#
cd ${NEXUS_GIT_DIR} || exit 127

git reset --hard
git checkout main
git pull
git checkout ${NEXUS_VERSION}

# Workaround
sed -i -e 's@procps shadow-utils@procps shadow-utils gzip@g' ${NEXUS_DOCKERFILE}

# Build
IMAGE_NAME=krynn-nexus3
docker build -f ${NEXUS_DOCKERFILE} -t ${IMAGE_NAME}:${NEXUS_VERSION} .
docker build -f ${NEXUS_DOCKERFILE} -t ${IMAGE_NAME} .
