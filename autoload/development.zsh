# General git cd to root
alias cdg='test "$(git rev-parse --show-cdup 2>/dev/null)" != "" && cd "$(git rev-parse --show-cdup)"'

# Add 'code' to path
alias vscode='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

# https://github.com/so-fancy/diff-so-fancy
# Configure git to use diff-so-fancy for all diff output:
git config --global core.pager "diff-so-fancy | less --tabs=4 -RF"
git config --global interactive.diffFilter "diff-so-fancy --patch"