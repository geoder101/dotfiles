
# MacPorts Installer addition on 2015-04-19_at_11:08:37: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# geoder101 - config

alias l='ls -l'
alias ll='ls -la'
alias g='git'

alias vim='/usr/local/bin/vim'

# shell prompt

export PS1="\u@\h\w $ "

# bash completion

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f .bash_alias_completion ]; then
    . .bash_alias_completion
fi


# Add GHC 7.10.1 to the PATH, via https://ghcformacosx.github.io/

export GHC_DOT_APP="/Applications/ghc-7.10.1.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# VSCode

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Setting PATH for Python 2.7
# The orginal version is saved in .profile.pysave

PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# go lang

export GOPATH=$HOME/golang
export PATH=$PATH:$GOPATH/bin

# Android SDK

export PATH=$PATH:/Users/geoder101/Library/Android/sdk/platform-tools:/Users/geoder101/Library/Android/sdk/tools
