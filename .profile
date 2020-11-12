# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
export EDITOR="nvim"
export BROWSER="firefox"
export READER="zathura"
export SUDO_ASKPASS="$HOME/.scripts/tools/dmenupass"
export TERMINAL="st"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
export JAVA_HOME="$HOME/.sdkman/candidates/java/current/"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"

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
