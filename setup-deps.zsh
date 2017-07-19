this_dir=$(dirname $0)
local err () {
    echo "${@} does not exists"
    echo "Please run ${this_dir}/setup-init.zsh to install dependencies" >&2
}
f='/usr/local/share/zsh-completions'
test -d "$f" || err "${f}"

f="$HOME/.zsh/deps/git-prompt/zshrc.sh"
test -f "${f}" || err "${f}"
test -f "${f}" && source "${f}"

f="$HOME/.zsh/deps/scm_breeze/scm_breeze.sh"
test -f "${f}" || err "${f}"
test -f "${f}" && source "${f}"

unfunction err
