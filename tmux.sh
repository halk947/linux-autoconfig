#!/bin/zsh
# Tanky Woo@2013-06-19 10:51:15
# About: 

source ~/.zshrc
tmux='tmux -2'

tmux start-server

if ! $(tmux has-session -t 'tankywoo'); then
	tmux new-session -d -s 'tankywoo' -n 'tankywoo' # -d *
	tmux select-window -t 'tankywoo'
	tmux split-window -h -p 60
	tmux select-pane -t 0
	tmux split-window -v -p 25
	tmux send-keys -t 0 'ipython' C-m
	# The C-m at the end is interpreted by Tmux as the enter key.

	tmux new-window -n 'ops-dev'

	tmux select-window -t 'tankywoo'
	tmux select-pane -t 2
fi

tmux attach-session -d -t 'tankywoo'
