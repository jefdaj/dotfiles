# bashrc for the Berkeley HPC cluster

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export CONDO=/clusterfs/rosalind/users/jefdaj

# old nix setup, which might work if you put it back
# module load boost/1.66.0 
# module load gcc/6.3.0 
# source $HOME/.nix-profile/etc/profile.d/nix.sh
# source $HOME/nix-no-root/nix-bashrc-settings.sh
# export NIX_PATH=nixpkgs=/global/home/users/jefdaj/nixpkgs
# for some reason these need to be set explicitly to convince it to avoid /nix:
# export NIX_STORE_DIR=$CONDO/nix2/store
# export NIX_STATE_DIR=$CONDO/nix2/var
# export NIX_USER_PROFILE_DIR=$NIX_STATE_DIR/nix/profiles/per-user/$USER
# alias nix-env='nix-env -f $HOME/nixpkgs'
# unset LIBRARY_PATH
# unset LD_LIBRARY_PATH

# export PATH=$HOME/shortcut/result/bin:$PATH
export PATH=$HOME/bin:$PATH
# export PATH=$HOME/asciicasts:$PATH
# This works around a Nix bug. But does it break anything else?

# aliases
# grepsc() { find "$HOME/shortcut/src"/* -name "*.hs" | xargs egrep "$1"; }

# for screencasts
# TODO why doesn't it set itself without this being commented out?
# if [[ ! -z $ASCIINEMA_REC ]]; then
#     export PS1='$ '
# fi

#export TMPDIR="/clusterfs/rosalind/users/jefdaj/shortcut-tmpdir"
