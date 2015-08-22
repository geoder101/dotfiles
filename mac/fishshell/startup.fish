#!/usr/bin/env fish

set docker_machine default

docker-machine start $docker_machine 1> /dev/null
docker-machine env $docker_machine --shell fish 1> /tmp/docker.fish
