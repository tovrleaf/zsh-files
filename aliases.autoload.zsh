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

# Easy editing
alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'
alias cdz='cd ~/.zsh'
alias v='vim'

function plaa {
<<<<<<< HEAD
    test -z $1 && return
    ssh-keygen -t rsa -b 4096 -f ~/.ssh/$1
    echo "Copying id to $1..."
    ssh-copy-id -i ~/.ssh/$1 $1
}
alias gen_sshkey="plaa"
