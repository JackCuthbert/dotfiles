# Vi mode
bindkey -v

# Remove the 0.4s delay switching vi modes
export KEYTIMEOUT=1 # reduces to 0.1

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# Vi mode indicator
# https://github.com/sindresorhus/pure/wiki
VIM_PROMPT="❯"
PROMPT='%(?.%F{magenta}.%F{red})${VIM_PROMPT}%f '

prompt_pure_update_vim_prompt() {
    zle || {
    print "error: pure_update_vim_prompt must be called when zle is active"
    return 1
}
VIM_PROMPT=${${KEYMAP/vicmd/❮}/(main|viins)/❯}
    zle .reset-prompt
}

function zle-line-init zle-keymap-select {
    prompt_pure_update_vim_prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1
