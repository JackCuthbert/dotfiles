# Assumes aura-bin is installed

# Package management
alias upgrade-aur="sudo aura -Aau"
alias upgrade-pacman="sudo aura -Syuu"

# remove orphaned packages
alias pacman-cleanup="sudo pacman -Rns $(pacman -Qtdq)"

# list installed packages _not_ in the base or base-devel groups
alias pacman-list="comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort) | less"

# becuase who wants to type that
alias music="ncmpcpp"
