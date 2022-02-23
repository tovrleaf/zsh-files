packages=$(cat <<EOF
ack
bat
exa
fd
thefuck
zoxide
ripgrep
zsh-completions
zsh-history-substring-search
zsh-syntax-highlighting
EOF
)

for p in ${packages[@]}; do
  brew ls ${p} 2>&1 >/dev/null || brew install ${p}
done

repositories=$(cat <<EOF
https://github.com/olivierverdier/zsh-git-prompt.git
https://github.com/scmbreeze/scm_breeze.git
https://github.com/zsh-users/zsh-autosuggestions.git
EOF
)

for r in ${repositories[@]}; do
  dir=$(echo $r | xargs basename | sed 's|.git$||')
  fdir="${HOME}/.zsh/deps/${dir}"
  test -d "${fdir}" && pushd "${fdir}" >/dev/null && git pull && popd >/dev/null
  ( ! test -d "${fdir}" && git clone $r "${fdir}" ) || ( pushd "${fdir}" && git pull && popd )
done
