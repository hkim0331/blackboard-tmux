#!/bin/sh
#
# melt-mainte/tmux-wrapper/tx.sh
#
# the simplest tmux wrapper.
# just check the existance of sessions saved.
# attach to it if exists, or create a new session.

tmux ls
if [ "$?" = "0" ]; then
    exec tmux a
else
    exec tmux
fi
