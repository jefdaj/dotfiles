#!/usr/bin/env bash

# see https://www.placona.co.uk/1224/linux/managing-your-dotfiles-the-right-way/

dir="$HOME/dotfiles"
olddir="$HOME/scratch/dotfiles_old"
skipthese=". .. .git .gitignore install.sh"

mkdir -p $olddir

install_link() {
	[[ "$file" =~ ".sw" ]] && return
	for skip in $skipthese; do
		[[ "$file" == "$skip" ]] && return
	done
	if [[ -L "$HOME/$file" ]]; then
		echo "$file already linked"
	else
		if [[ -f "$HOME/$file" ]]; then
			cmd="mv "$HOME/$file" "$olddir""
			echo "$cmd" && eval "$cmd"
		fi
		cmd="ln -fs "$dir/$file" "$HOME/$file""
		echo "$cmd" && eval "$cmd"
	fi
}

cd $dir
ls -a | while read file; do
	install_link "$file"
done

cmd="source $HOME/.bashrc"
echo "$cmd" && eval "$cmd"
# source ~/.vimrc
