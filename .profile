# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -e /home/jefdaj/.nix-profile/etc/profile.d/nix.sh ]; then . /home/jefdaj/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

XDG_DESKTOP_DIR="$HOME/incoming"
XDG_DOCUMENTS_DIR="$HOME/incoming/"
XDG_DOWNLOAD_DIR="$HOME/incoming/"
XDG_MUSIC_DIR="$HOME/incoming/"
XDG_PICTURES_DIR="$HOME/incoming/"
XDG_VIDEOS_DIR="$HOME/incoming"
