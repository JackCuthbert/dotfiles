source ~/.zinit/bin/zinit.zsh

# Highlighting
zinit ice silent wait"0" atinit"zpcompinit; zpcdreplay"
zinit light zdharma/fast-syntax-highlighting

# Suggestions/completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zinit ice silent wait"0" blockf
zinit light zsh-users/zsh-completions
zinit ice silent wait"0" atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

# nvm and npm completions
zinit ice silent wait"0"
zinit light lukechilds/zsh-nvm
zinit ice silent wait"0"
zinit light lukechilds/zsh-better-npm-completion

# Git
zinit snippet OMZ::plugins/git/git.plugin.zsh

# thefuck
zinit ice wait"1" lucid
zinit light laggardkernel/zsh-thefuck
