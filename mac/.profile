
# MacPorts Installer addition on 2015-04-19_at_11:08:37: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# geoder101 - config

alias l='ls -l'
alias ll='ls -la'
alias g='git'

alias vim='/usr/local/bin/vim'

# boot2docker shellinit
. ~/boot2dockerenv 2>/dev/null

# shell prompt
export PS1="\u@\h\w $ "

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f .bash_alias_completion ]; then
    . .bash_alias_completion
fi

