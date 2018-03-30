# ~/.profile: executed by the command interpreter for login shells.
# I haven't found a reason to use it; everything is in .bashrc for now.

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
