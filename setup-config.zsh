# setup tab completion for commands
autoload -U compinit && compinit
# use colors
autoload -U colors && colors
# use builtin promts
autoload -U promptinit && promptinit
prompt pws
# use hooks
autoload -U add-zsh-hook
# use interactive promt
setopt prompt_subst

setopt completealiases

# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD

source "$(dirname $0)/setup-deps.zsh"

# autoload all autoloadable files: history, aliases, etc
for conf ($(dirname $0)/autoload/*.zsh); do
  source $conf
done

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

eval "$(zoxide init zsh)"
