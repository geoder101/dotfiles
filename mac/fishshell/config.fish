alias l ls
alias vim /usr/local/bin/vim

set -U fish_user_abbreviations

abbr -a g=git
abbr -a dk=docker
abbr -a dkc=docker-compose
abbr -a dkm=docker-machine
abbr -a dkr=docker run -it --rm

set docker_machine default

switch (docker-machine status $docker_machine)
    case Running
        eval (docker-machine env $docker_machine --shell fish)
end
