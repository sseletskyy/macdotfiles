#!/usr/bin/env bash

session=$(find ~ ~/sandbox/ ~/projects/ -type d -mindepth 1 -maxdepth 1 | fzf)

session_name=$(basename "$session" | tr . _)

echo "session $session_name"

if ! tmux has-session -t "$session_name" 2> /dev/null; then
  tmux new-session -s "$session_name" -c "$session" -d
fi

if ! tmux switch-client -t "$session_name" 2> /dev/null; then
  echo "tmux is not attached yet. Attaching to $session_name"
  tmux attach-session -t "$session_name"
fi

