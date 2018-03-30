# bashrc for the Berkeley HPC cluster

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# module load gcc/4.8.1
# module load glib/2.32.4

# TODO why doesn't this work?
# module load tmux

export NIX_PATH=nixpkgs=/global/home/users/jefdaj/nixpkgs
source $HOME/.nix-profile/etc/profile.d/nix.sh
export PATH=$HOME/shortcut/result/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/asciicasts:$PATH
# This works around a Nix bug. But does it break anything else?
unset LIBRARY_PATH
unset LD_LIBRARY_PATH

export CONDO=/clusterfs/rosalind/users/jefdaj

# aliases
grepsc() { find "$HOME/shortcut/src"/* -name "*.hs" | xargs egrep "$1"; }

# for screencasts
# if [[ ! -z $ASCIINEMA_REC ]]; then
    export PS1='$ ' # TODO why doesn't it work?
# fi
