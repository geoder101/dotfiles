alias lock='xflock4'
alias battery='acpi'
alias sound='alsamixer'
alias xopen='xdg-open'
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'
alias g='git'

source /usr/share/bash-completion/completions/git
complete -o default -o nospace -F _git g
