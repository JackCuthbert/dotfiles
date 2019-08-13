source ~/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# Highlighting
zplugin ice silent wait"0" atinit"zpcompinit; zpcdreplay"
zplugin light zdharma/fast-syntax-highlighting

# Suggestions/completions
zplugin ice silent wait"0" blockf
zplugin light zsh-users/zsh-completions
zplugin ice silent wait"0" atload"_zsh_autosuggest_start"
zplugin light zsh-users/zsh-autosuggestions

# Git
zplugin snippet OMZ::plugins/git/git.plugin.zsh

# thefuck
zplugin ice wait"1" lucid
zplugin light laggardkernel/zsh-thefuck

# Theme
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure
