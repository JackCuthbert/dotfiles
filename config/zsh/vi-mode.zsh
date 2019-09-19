# Vi mode
bindkey -v

# Remove the 0.4s delay switching vi modes
export KEYTIMEOUT=1 # reduces to 0.1

bindkey '^P' up-history
bindkey '^N' down-history

# Use the delete key properly
bindkey '^[[3~' delete-char
bindkey '^[3;5~' delete-char

bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
