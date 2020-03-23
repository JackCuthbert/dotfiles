# https://danishpraka.sh/2018/08/03/command-line-dir-switcher.html
# Requires: fzf
function quick_find () {
    dir=$(find ~/Code -type d -not -path '*/\.*' -maxdepth 1 | fzf)
    cd $dir
    starship_precmd
    zle reset-prompt
}

zle -N quick_find_widget quick_find
bindkey "^P" quick_find_widget

# Open something and disown the process
function open () {
    xdg-open "$*" &
    disown
}
