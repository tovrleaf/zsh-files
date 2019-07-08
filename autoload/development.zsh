alias cdg='test "$(git rev-parse --show-cdup 2>/dev/null)" != "" && cd "$(git rev-parse --show-cdup)"'

# Add 'code' to path
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

function _selaws() {
    select _aws_profile in $(grep '\[profile' ~/.aws/config | sed 's/\[profile \(.*\)]/\1/'); do
        export AWS_PROFILE=$_aws_profile;
        break;
    done
}
alias selaws='_selaws'
