# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="nvim"
export TERMINAL="termite"
export BROWSER="brave"
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
alias cs='nvim $HOME/.config/sxhkd/sxhkdrc'
alias ch='sudo usb_modeswitch -v 0x12d1 -p 0x1f01 -J'
# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '')"; a="${a%_}"

echo "$0" | grep "bash$" >/dev/null && [ -f ~/.bashrc ] && source "$HOME/.bashrc"

# Start graphical server if i3 not already running.
#[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/wziebicki/.sdkman"
[[ -s "/home/wziebicki/.sdkman/bin/sdkman-init.sh" ]] && source "/home/wziebicki/.sdkman/bin/sdkman-init.sh"
