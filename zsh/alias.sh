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

# Docker
alias c='docker-compose'
alias d='docker'

# Package management
alias upgrade-aur="sudo aura -Aau"
alias upgrade-pacman="sudo aura -Syuu"

# remove orphaned packages
alias pacman-cleanup="sudo pacman -Rns $(pacman -Qtdq)"

# list installed packages _not_ in the base or base-devel groups
alias pacman-list="comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort) | less"

# becuase who wants to type that
alias music="ncmpcpp"

# Commented until exa is fixed: https://github.com/ogham/exa/issues/517
# alias l="exa -ghl"
# alias la="exa -ghla"

# Until then use lsd.
alias l='lsd -lF --group-dirs=first --date=relative --icon=never'
alias la='l -A'
