#!/bin/sh

if [ "$DOCKER_GID" != '999' ]; then
  delgroup docker && addgroup -g ${DOCKER_GID} docker
  addgroup ${APP_USER} docker
fi
