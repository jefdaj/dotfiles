#!/usr/bin/env bash

# TODO replace this with hostname dirs
SPECIAL="bash bash_hpc readme.md install.sh firefox"
show_n_stow() { cmd="stow --verbose '$1'"; echo "$cmd"; eval "$cmd"; }

# go to dotfiles dir
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  # install shared dotfiles
  ls | while read d; do
    [[ $SPECIAL =~ $d ]] || show_n_stow "$d"
  done

  # install per-host dotfiles
  [[ $(hostname) == agora ]] && show_n_stow firefox
  [[ $(hostname) =~ brc ]] && show_n_stow bash_hpc || show_n_stow bash
}

main
