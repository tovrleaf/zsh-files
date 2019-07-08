# List drectory contents
alias ls='echo \>\> $fg_no_bold[green]$(pwd)$reset_color; ls -G'

alias l='ls'
alias ll='ls -l'
alias la='ls -lA'
alias lsa='ls -lah'
alias sl='ls'
alias prev=1

alias p='pwd'
alias o='open'
alias g='git'
alias v='vim'
alias u='uname -a'

# Shortcuts for aggregate functions
alias -g C='|wc -l'
alias -g G='|grep'
alias -g L='|less'
alias -g CP='|pbcopy'
alias -g J='|jq'

# Easy editing
alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'
alias cdz='cd ~/.zsh'
alias v='vim'

alias genpassword='pwgen -y -s $(( ( RANDOM % 10 ) + 64 )) -1'
