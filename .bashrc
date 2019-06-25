#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="nvim"
export TERMINAL="termite"
export BROWSER="firefox"
export READER="zathura"
export SUDO_ASKPASS="$HOME/.scripts/tools/dmenupass"

export JAVA_HOME="$HOME/.sdkman/candidates/java/current/"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias clipclean='clipdel -d .*'
alias r='ranger'
alias cm='nvim $HOME/.config/mutt/muttrc'
alias cv='nvim $HOME/.config/nvim/init.vim'
alias cb='nvim $HOME/.bashrc'
alias ch='sudo usb_modeswitch -v 0x12d1 -p 0x1f01 -J'
alias ci3='nvim $HOME/.config/i3/config'
# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"


PS1='[\u@\h \W]\$ '

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/wziebicki/.sdkman"
[[ -s "/home/wziebicki/.sdkman/bin/sdkman-init.sh" ]] && source "/home/wziebicki/.sdkman/bin/sdkman-init.sh"

source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
