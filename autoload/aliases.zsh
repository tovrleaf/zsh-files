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

alias food='sodexo_food'

function sodexo_food() {
    echo -ne ' '$(curl -sL "http://www.sodexo.fi/ruokalistat/output/daily_json/878/$(date +%Y/%m/%d)/fi" | \
        jq -r '.courses[] | select(.category != null) | "\\033[1;33m\(.category):\\t\\033[1;0m\(.title_fi) \\033[1;31m(\(.price))\\n\\033[1;0m"')
}

alias genpassword='pwgen -y -s $(( ( RANDOM % 10 ) + 64 )) -1'
