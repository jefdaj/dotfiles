#!/usr/bin/env bash

# see https://www.placona.co.uk/1224/linux/managing-your-dotfiles-the-right-way/
# TODO make the files visible and add a dot when linking
# TODO once using visible files, can ignore a lot less
# TODO dir -> dotdir
# TODO instead of olddir, put them in dotdir with old_ prefix

dotdir="$HOME/dotfiles"

install_dotfile_link() {
	[[ "$1" == "install.sh" || "$1" == *.sw* || "$1" == *.old ]] && return
	dotfile="${dotdir}/$1"
	oldfile="${dotfile}.old"
	dotlink="$HOME/.$1"
	if [[ -L "$dotlink" ]]; then
		echo "# skip $dotlink"
	else
		if [[ -f "$dotlink" ]]; then
			cmd="mv "$dotlink" "$oldfile""
			echo "$cmd" && eval "$cmd"
		fi
		cmd="ln -fs "$dotfile" "$dotlink""
		echo "$cmd" && eval "$cmd"
	fi
}

# main
cd "$dotdir"
find * -type f | while read dotfile; do
	install_dotfile_link "$dotfile"
done
cmd="source $HOME/.bashrc"
echo "$cmd" && eval "$cmd"
