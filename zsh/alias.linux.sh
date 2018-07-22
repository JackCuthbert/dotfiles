alias upgrade-aur="sudo aura -Akua"
alias upgrade-pacman="sudo pacman -Syu"
alias packages-pacman="comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort) | less"
alias music="ncmpcpp"
