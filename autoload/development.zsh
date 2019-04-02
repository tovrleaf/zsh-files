alias pu="phpunit --colors --verbose"

alias cdg='test "$(git rev-parse --show-cdup 2>/dev/null)" != "" && cd "$(git rev-parse --show-cdup)"'

function git_config() {
    local email="niko.kivela@finnair.com"
    if [[ "$(pwd)" =~ "finnaircom" && "$(git config user.email)" != "${email}" ]]; then
        echo "$fg_no_bold[green]> Automatically setting git user.email to $fg_no_bold[yellow]${email}$reset_color"
        git config user.email "${email}"
    fi
}
alias git_config="git_config"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
