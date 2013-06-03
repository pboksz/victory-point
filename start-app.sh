#!/bin/bash

tmux new -d -s app -n 'pass'
tmux send-keys -t app:0 'passenger start' C-m

tmux new-window -t app:1 -n 'rails'
tmux send-keys -t app:1 'bundle exec rails c' C-m

tmux new-window -t app:2 -n 'spec'
tmux new-window -t app:3 -n 'git'

tmux attach -t app
