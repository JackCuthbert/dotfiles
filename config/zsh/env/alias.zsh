#######
#
# Alias
#
#######
alias cl="clear"
alias g="git"
alias v="nvim"

# Common directories
alias f="zi"

# Docker
alias d='docker'
alias c='docker-compose'

# remove orphaned packages
alias pacman-cleanup="echo \"Consider using aura -Oj\"; sleep 3; sudo pacman -Rns $(pacman -Qtdq)"

# list installed packages _not_ in the base or base-devel groups
alias pacman-list="comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort) | less"

# file listing
alias l="exa --group-directories-first -gl --git"
alias la="l -a"

# vim-like commands
alias :q='exit'
alias :wq='exit'
alias :x='exit'

# direnv
alias da='direnv allow'
