packages="zsh-completions zsh-history-substring-search zsh-syntax-highlighting autojump"
for p in ${packages[@]}; do
  brew ls ${p} 2>&1 >/dev/null || brew install ${p}
done

repositories="git@github.com:zsh-users/zsh-autosuggestions.git git@github.com:olivierverdier/zsh-git-prompt.git git@github.com:scmbreeze/scm_breeze.git git@github.com:wting/autojump.git git@github.com:icefox/git-achievements.git"
for r in ${repositories[@]}; do
  dir=$(echo $r | awk -F'/' '{ print $2; }' | sed 's|.git$||')
  fdir="${HOME}/.zsh/deps/${dir}"
  test -d "${fdir}" && pushd "${fdir}" >/dev/null && git pull && popd >/dev/null
  ! test -d "${fdir}" && git clone $r "${fdir}"
done
