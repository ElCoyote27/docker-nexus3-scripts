#!/bin/bash
# /net/imladris/export/home/raistlin/World/Vincent/Code/GIT/docker-nexus3-scripts/clean.sh

NAME=krynn-nexus3
docker stop ${NAME}
docker rm ${NAME}
