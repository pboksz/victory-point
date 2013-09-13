#!/bin/bash

tmux new -d -s app -n 'unicorn'
tmux send-keys -t app:0 'bundle exec unicorn_rails -c config/unicorn.rb' C-m

tmux new-window -t app:1 -n 'rails'
tmux send-keys -t app:1 'bundle exec rails c' C-m

tmux new-window -t app:2 -n 'spec'
tmux send-keys -t app:2 'bundle exec rspec spec' C-m

tmux new-window -t app:3 -n 'git'
tmux send-keys -t app:3 'git status' C-m

tmux attach -t app
