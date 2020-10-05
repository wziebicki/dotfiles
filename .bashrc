#
# ~/.bashrc
#
 # This file runs every time you open a new terminal window.

# Limit number of lines and entries in the history. HISTFILESIZE controls the
# history file on disk and HISTSIZE controls lines stored in memory.
export HISTFILESIZE=50000
export HISTSIZE=50000

# Add a timestamp to each command.
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "

# Duplicate lines and lines starting with a space are not put into the history.
export HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# Ensure $LINES and $COLUMNS always get updated.
shopt -s checkwinsize

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
