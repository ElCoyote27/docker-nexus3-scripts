#!/bin/bash
NAME=krynn-nexus3
docker stop ${NAME}
docker rm ${NAME}
docker rmi ${NAME}:latest
