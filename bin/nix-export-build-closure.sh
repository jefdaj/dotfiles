#!/usr/bin/env bash
# usage: nix-export-build-closure.sh [targetdir]

[[ -z "$1" ]] && target="$PWD" || target="$1"
cd "$target"
readlink result &> /dev/null || nix-build
derivation="$(ls -al result | cut -d' ' -f11)"
outname="$(echo "$derivation" | cut -c45-).nix.xz"
echo "exporting $derivation to $outname"
nix-store --export $(nix-store --query --requisites --include-outputs "$derivation") |
  xz > "$outname"
