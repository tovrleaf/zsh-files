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


# format prompt
PROMPT="%{$fg_bold[yellow]%}%T% %{$fg_no_bold[yellow]%} %1~%{$reset_color%}"
! type git_super_status &>/dev/null || PROMPT=$PROMPT' $(git_super_status)'

function add_aws_profile() {
  local p=""

  if [ "${AWS_PROFILE}" = "" ]; then
    unset AWS_PROFILE_IS_SET
  else
    if [ "${AWS_PROFILE_IS_SET}" != "${AWS_PROFILE}" ]; then
      export AWS_PROFILE_IS_SET=${AWS_PROFILE}
      local p="$bg[yellow]%}%{$fg[white]%}aws%{$reset_color%}:{%{$fg[yellow]%}${AWS_PROFILE}%{$reset_color%}}# "
    fi
  fi

  echo "${p}"
}
PROMPT=$PROMPT'$(add_aws_profile)'

function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    local EXIT_CODE_PROMPT=' '
    EXIT_CODE_PROMPT+="%{$fg[red]%}-%{$reset_color%}"
    EXIT_CODE_PROMPT+="%{$fg_bold[red]%}$LAST_EXIT_CODE%{$reset_color%}"
    EXIT_CODE_PROMPT+="%{$fg[red]%}-%{$reset_color%}"
    echo "$EXIT_CODE_PROMPT"
  fi
}
RPROMPT='$(check_last_exit_code)%{$fg_no_bold[green]%}%d%{$reset_color%}'

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

