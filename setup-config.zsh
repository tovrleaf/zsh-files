MY_ZSH=$(dirname $0)

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

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)
if [ -f $(brew --prefix)/etc/bash_completion.d ]; then
    . $(brew --prefix)/etc/bash_completion.d
fi

# autoload all autoloadable files: history, aliases, etc
for conf ($MY_ZSH/*.autoload.zsh); do
  source $conf
done

# format prompt
PROMPT="%{$fg_bold[yellow]%}%T% %{$fg_no_bold[yellow]%} %1~%{$reset_color%}%# "
RPROMPT="%{$fg_no_bold[green]%}%d%{$reset_color%}"
