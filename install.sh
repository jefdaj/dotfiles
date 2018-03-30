#!/usr/bin/env bash

show_n_stow() { cmd="stow --verbose '$1'"; echo "$cmd"; eval "$cmd"; }
SPECIAL="readme.md install.sh firefox"

# go to dotfiles dir
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# install shared dotfiles
ls | while read d; do
  [[ $SPECIAL =~ $d ]] || show_n_stow "$d"
done

# install per-host dotfiles
[[ $(hostname) == agora ]] && show_n_stow firefox
