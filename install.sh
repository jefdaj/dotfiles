#!/usr/bin/env bash

SPECIAL="readme.md install.sh"

show_n_stow() {
  src="$PWD"
  dst="$HOME"
  cmd="stow --verbose --dir '$src' --target '$dst' '$1'"
  echo "$cmd"
  eval "$cmd"
}

main() {
  # misc setup
  mkdir -p $HOME/.local/bin
  # go to dotfiles dir
  cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  ls | while read d; do
    [[ $SPECIAL =~ $d ]] || show_n_stow "$d"
  done
}

main
