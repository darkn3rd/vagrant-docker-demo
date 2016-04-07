#!/bin/sh
WEBSERVER=$(docker-machine ip "${DOCKER_MACHINE_NAME}") # set to docker ip
WEBSERVER=${WEBSERVER:-localhost}  # default to localhost if not set
echo ${WEBSERVER}
