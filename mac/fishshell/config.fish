alias l ls
alias vim /usr/local/bin/vim

set -U fish_user_abbreviations

abbr -a g=git
abbr -a dk=docker
abbr -a dkc=docker-compose
abbr -a dkm=docker-machine
abbr -a dkr=docker run -it --rm

set -x DOCKER_TLS_VERIFY "1"
set -x DOCKER_HOST "tcp://192.168.99.100:2376"
set -x DOCKER_CERT_PATH "/Users/geoder101/.docker/machine/machines/default"
set -x DOCKER_MACHINE_NAME "default"
