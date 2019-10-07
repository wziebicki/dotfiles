#
# ~/.bashrc
#

PS1='[\u@\h \W]\$ '

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/wziebicki/.sdkman"
[[ -s "/home/wziebicki/.sdkman/bin/sdkman-init.sh" ]] && source "/home/wziebicki/.sdkman/bin/sdkman-init.sh"

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
