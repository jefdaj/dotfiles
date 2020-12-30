#!/usr/bin/env bash
# based on https://lazamar.github.io/download-specific-package-version-with-nix/
# usage: nix-package-versions.sh nixos/nixos-20.09 pkgs/development/python-modules/biopython/default.nix

branch="$1"; shift
paths="$@"

# this is specific to my setup
cd $HOME/myrepos/github/nixpkgs

git rev-list $branch -- $paths |
  xargs -I{} git grep -E '^\s+version\s?=\s?"[^"]+"\s*;\s*$' {} -- $paths |
	while IFS=':' read commit path match; do echo "$commit $match $path" | sed 's/\s\s*/\ /g'; done |
	sort -k2 -r | uniq | less
