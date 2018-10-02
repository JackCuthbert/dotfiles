# Assumes aura-bin is installed

# Package management
alias upgrade-aur="sudo aura -Aau"
alias upgrade-pacman="sudo aura -Syuu"
alias packages-cleanup="sudo pacman -Rns $(pacman -Qtdq)"
alias packages-pacman="comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort) | less"

# becuase who wants to type that
alias music="ncmpcpp"
