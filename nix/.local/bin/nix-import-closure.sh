#!/usr/bin/env bash
# usage: nix-import-closure.sh file.nix.xz

echo "importing $1"
xzcat "$1" | nix-store --import
