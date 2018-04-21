#!/bin/sh
#
# blackboard-by-tmux
#
# 2018-04-21

UID=bb
SERV=vm2018.local
TX=/usr/local/bin/tx

usage() {
    echo 'bbt --init   initialize bbt system'
    echo 'bbt          execute bbt'
}

init() {
    if [ ! -f ~/.ssh/id_rsa.pub ]; then
      ssh-keygen
    fi
    ssh-copy-id ${UID}@${SERV}
}

if [ "$1" = "--init" ]; then
    init
elif [ "$1" = "--help" ]; then
    usage
else
    ssh ${UID}@${SERV} -t ${TX}
fi
