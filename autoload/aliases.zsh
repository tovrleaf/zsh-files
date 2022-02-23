# List directory contents
alias ls='echo \>\> $fg_no_bold[green]$(pwd)$reset_color; exa --color=auto'

alias l='exa'
alias ll='exa -l'
alias la='exa -la'
alias lsa='exa -lah'
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
alias -g D='|diff-so-fancy'

# Easy editing
alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'
alias cdz='cd ~/.zsh'
alias v='vim'

 eval $(thefuck --alias)

alias genpassword='pwgen -y -s $(( ( RANDOM % 10 ) + 64 )) -1'

function _sshkeygenwrapper() {
    if [ "$#" -ne "2" ]; then
        echo "Usage: email@address user@service"
        return
    fi

    f="$HOME/.ssh/${2}_id_rsa"

    ssh-keygen -t rsa -b 4096 -C "${1}" -f "${f}"
    echo "To add SSH private key to the ssh-agent and store passphrase in the keychain, run"
    echo -e "\tssh -add -K $f"
}
alias skeygen='_sshkeygenwrapper $@'

function _sha256sum() {
    openssl sha256 $1 | cut -d' ' -f2
}
alias sha256sum='_sha256sum $@'

# also remember bat
alias cat='ccat'
alias week='date +%V'
