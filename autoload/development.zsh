alias cdg='test "$(git rev-parse --show-cdup 2>/dev/null)" != "" && cd "$(git rev-parse --show-cdup)"'

# Add 'code' to path
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
