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

# remove orphaned packages
alias pacman-cleanup="sudo pacman -Rns $(pacman -Qtdq)"

# list installed packages _not_ in the base or base-devel groups
alias pacman-list="comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort) | less"

# becuase who wants to type that
alias music="ncmpcpp -b ~/.config/ncmpcpp/bindings"

# file listing
alias l="exa --group-directories-first -gl --git"
alias la="l -a"

# file browser
alias n="nnn"
