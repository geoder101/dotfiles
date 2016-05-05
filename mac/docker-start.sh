#!/usr/bin/env bash

MACHINE_ID=default

docker-machine start $MACHINE_ID
docker-machine env $MACHINE_ID 1> /tmp/docker.env

if [ -f /tmp/docker.env ]; then
    source /tmp/docker.env
fi