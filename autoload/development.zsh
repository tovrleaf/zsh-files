alias pu="phpunit --colors --verbose"

alias cdg='test "$(git rev-parse --show-cdup 2>/dev/null)" != "" && cd "$(git rev-parse --show-cdup)"'

alias python='/usr/local/bin/python2'
alias pip='/usr/local/bin/pip2'
export PATH=$PATH:~/Library/Python/2.7/bin


function git_config() {
    local email="niko.kivela@finnair.com"
    if [[ "$(pwd)" =~ "finnaircom" && "$(git config user.email)" != "${email}" ]]; then
        echo "$fg_no_bold[green]> Automatically setting git user.email to $fg_no_bold[yellow]${email}$reset_color"
        git config user.email "${email}"
    fi
}
alias git_config="git_config"
