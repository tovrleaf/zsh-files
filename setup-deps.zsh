this_dir=$(dirname $0)
local err () {
  echo "${@} does not exists"
  echo "Please run ${this_dir}/setup-init.zsh to install dependencies" >&2
}

# zsh completions
f='/usr/local/share/zsh-completions'
test -d "$f" || err "${f}"
test -d "$f" && fpath=(${f} ${fpath})

f='/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
test -f "$f" || err "${f}"
test -f "$f" && source "${f}"

f='/usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh'
test -f "$f" || err "${f}"
test -f "$f" && source "${f}"

# zsh prompt
f="$HOME/.zsh/deps/zsh-git-prompt/zshrc.sh"
test -f "${f}" || err "${f}"
test -f "${f}" && source "${f}"

# scm breeze
f="$HOME/.zsh/deps/scm_breeze/scm_breeze.sh"
test -f "${f}" || err "${f}"
test -f "${f}" && source "${f}"

f="$HOME/.zsh/deps/zsh-autosuggestions/zsh-autosuggestions.zsh"
test -f "${f}" || err "${f}"
test -f "${f}" && source "${f}"

unfunction err
