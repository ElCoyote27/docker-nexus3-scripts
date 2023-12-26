#!/bin/sh
# /net/imladris/export/home/raistlin/World/Vincent/Code/GIT/docker-nexus3-scripts/run.sh

NAME=krynn-nexus3
MYIP=10.88.0.121
export DOCKER_ID="$(docker ps -aq --filter name=${NAME})"

if [[ "${DOCKER_ID}" != "" ]]; then
	docker start ${NAME}
else
	docker run \
	-d --privileged --cap-add=NET_ADMIN \
	-p ${MYIP}:8081:8081 \
	-p ${MYIP}:18000:18000 \
	-p ${MYIP}:18001:18001 \
	-p ${MYIP}:18002:18002 \
	-p ${MYIP}:18003:18003 \
	-p ${MYIP}:18004:18004 \
	-p ${MYIP}:18005:18005 \
	-p ${MYIP}:18010:18010 \
	-v /nexus-data:/nexus-data \
	--name ${NAME} \
	--ip ${MYIP} \
	${NAME}:latest
fi

#	--network=host \
#
# podman generate systemd --restart-policy=always -t 1 krynn-nexus3 > /etc/systemd/system/krynn-nexus3.service
# systemctl enable --now krynn-nexus3.service

