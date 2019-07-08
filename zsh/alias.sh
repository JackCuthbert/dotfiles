#######
#
# Alias
#
#######
alias reload="source ~/.zshrc && clear && motd"
alias clterm="clear && zshsource"
alias cl="clear"
alias cll="clear && l"
alias g="git"
alias dotfiles="cd ~/.dotfiles"
alias record="asciinema rec"
alias v="nvim"
alias vs="vscodium"
alias c='docker-compose'
alias d='docker'

# Commented until exa is fixed: https://github.com/ogham/exa/issues/517
# alias l="exa -ghl"
# alias la="exa -ghla"

# Until then, just use coreutils ls.
alias l='ls --color=auto --group-directories-first -l'
alias la='ls --color=auto --group-directories-first -l --all'
