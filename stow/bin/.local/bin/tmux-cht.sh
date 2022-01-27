#!/usr/bin/env bash

#languages=$(echo "javascript typescript rust haskell ruby golang" | tr " " "\n")
#core_utils=$(echo "find xargs sed awk grep" | tr " " "\n")
#selected=$(echo -e "$languages\n$core_utils" | fzf)
#
#read -p "Type in you query: " query
#
#if  echo "$languages" | grep -qs $selected; then
#  echo "found in languages"
#  tmux splitw -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
#else
#  echo "found in core utils"
#  tmux splitw -h bash -c "curl cht.sh/$selected~$query | less"
#fi
#
selected=`cat ~/.tmux-cht-languages ~/.tmux-cht-command | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

read -p "Enter Query: " query

if grep -qs "$selected" ~/.tmux-cht-languages; then
    query=`echo $query | tr ' ' '+'`
    tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
else
    tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
fi
