repositories=$(cat <<EOF
https://github.com/scmbreeze/scm_breeze.git
EOF
)

for r in ${repositories[@]}; do
  dir=$(echo $r | xargs basename | sed 's|.git$||')
  fdir="${HOME}/.config/zsh/deps/${dir}"
  test -d "${fdir}" && pushd "${fdir}" >/dev/null && git pull && popd >/dev/null
  ( ! test -d "${fdir}" && git clone $r "${fdir}" ) || ( pushd "${fdir}" && git pull && popd )
done
