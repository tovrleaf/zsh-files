# setup tab completion for commands
autoload -U compinit && compinit
# use colors
autoload -U colors && colors
# use builtin promts
autoload -U promptinit && promptinit
prompt pws

# complete commandline switches
setopt completealiases

# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD

# zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)
! type brew &>/dev/null || ! test -d $(brew --prefix)/etc/bash_completion.d || . $(brew --prefix)/etc/bash_completion.d

# autoload all autoloadable files: history, aliases, etc
for conf ($(dirname $0)/autoload/*.zsh); do
  source $conf
done

# format prompt
PROMPT="%{$fg_bold[yellow]%}%T% %{$fg_no_bold[yellow]%} %1~%{$reset_color%}"
! type git_super_status &>/dev/null || PROMPT=$PROMPT'$(git_super_status)'
PROMPT=$PROMPT"%# "
RPROMPT="%{$fg_no_bold[green]%}%d%{$reset_color%}"
