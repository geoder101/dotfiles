#!/usr/bin/env fish

# Aliases

alias l ls
alias vim /usr/local/bin/vim

set -U fish_user_abbreviations

abbr -a g=git
abbr -a dk=docker
abbr -a dkc=docker-compose
abbr -a dkm=docker-machine
abbr -a dkr=docker run -it --rm

# go lang

set -x GOPATH $HOME/golang
set -x PATH $PATH $GOPATH/bin

# Docker env

set docker_machine default
set docker_env_file /tmp/docker.fish

if test -e $docker_env_file
    eval (cat $docker_env_file)
end

# Haskell

set -x PATH $PATH "/Applications/ghc-7.10.1.app/Contents/bin"

# Android SDK

set -x PATH $PATH /Users/geoder101/Library/Android/sdk/platform-tools /Users/geoder101/Library/Android/sdk/tools
