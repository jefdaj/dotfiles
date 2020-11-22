#!/usr/bin/env bash
# usage: nix-export-shell-closure.sh [targetdir]

[[ -z "$1" ]] && target="$PWD" || target="$1"
outname="$(basename "$target")-shell.nix.xz"
cd "$target"
derivation="$(nix-shell -vv --command exit 2>&1 | tail -n1 | cut -d"'" -f4)"
echo "exporting $derivation to $outname"
nix-store --export $(nix-store --query --requisites --include-outputs "$derivation") |
  xz > "$outname"
