#!/usr/bin/env bash

SPECIAL="readme.md install.sh"

show_n_stow() {
  cmd="stow --verbose '$1'"
  echo "$cmd"
  eval "$cmd"
}

main() {
  # go to dotfiles dir
  cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  ls | while read d; do
    [[ $SPECIAL =~ $d ]] || show_n_stow "$d"
  done
}

main
