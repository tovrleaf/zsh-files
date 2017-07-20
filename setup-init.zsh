brew ls zsh-completions 2>&1 >/dev/null || brew install zsh-completions

repositories="git@github.com:olivierverdier/zsh-git-prompt.git git@github.com:scmbreeze/scm_breeze.git"
for r in ${repositories[@]}; do
    dir=$(echo $r | awk -F'/' '{ print $2; }' | sed 's|.git$||')
    fdir="${HOME}/.zsh/deps/${dir}"
    test -d "${fdir}" && pushd "${fdir}" >/dev/null && git pull && popd >/dev/null
    ! test -d "${fdir}" && git clone $r "${fdir}"
done
