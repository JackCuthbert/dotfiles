alias c='docker-compose'
alias cl="clear"
alias d='docker'
alias da='direnv allow'
alias f="zi"
alias g="git"
alias l="exa --group-directories-first -gl"
alias la="l -a"
alias v="nvim"
alias http="ht"

# vim-like
alias :q='exit'
alias :wq='exit'
alias :x='exit'

# remove orphaned packages
alias pacman-cleanup="echo \"Consider using aura -Oj\"; sleep 3; sudo pacman -Rns $(pacman -Qtdq)"

# list installed packages _not_ in the base or base-devel groups
alias pacman-list="comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort) | less"
