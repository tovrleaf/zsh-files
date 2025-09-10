#/!usr/bin/env zsh

function {

    local this_dir="$(dirname $0)"
    function err () {
      echo "${@} does not exists"
      echo "Please run ${this_dir}/setup-init.zsh to install dependencies" >&2
    }
  
    if type brew &>/dev/null; then
      FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

      autoload -Uz compinit
      compinit
    fi

    # zsh completions
    f="$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
    test -f "$f" || err "${f}"
    test -f "$f" && source "${f}"

    f="$(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
    test -f "$f" || err "${f}"
    test -f "$f" && source "${f}"

    f="$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
    test -f "${f}" || err "${f}"
    test -f "${f}" && source "${f}"
    
    f="$(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme"
    test -f "${f}" || err "${f}"
    test -f "${f}" && source "${f}"

    # scm breeze
    f="$HOME/.config/zsh/deps/scm_breeze/scm_breeze.plugin.zsh"
    test -f "${f}" || err "${f}"
    test -f "${f}" && source "${f}"

    unfunction err
}
