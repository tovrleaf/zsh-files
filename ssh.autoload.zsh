# define
# typeset -A MY_SSH_HOSTS
# MY_SSH_HOSTS[foo]=bar@biz
ssh () {
    s="/usr/bin/ssh"

    if (( ${+MY_SSH_HOSTS[$1]} )); then
        $s $MY_SSH_HOSTS[$1]
        return $?
    fi

    $s $@
}
