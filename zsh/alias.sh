#######
#
# Alias
#
#######
alias zshsource="source ~/.zshrc"
alias clterm="clear && zshsource"
alias cl="clear"
alias g="git"
alias dotfiles="cd ~/.dotfiles"
alias record="asciinema rec"
alias l="exa -ghl"
alias la="exa -ghla"
alias v="nvim"

# Arch Specific
alias upgrade-aur="sudo aura -Akua"
alias upgrade-pacman="sudo pacman -Syu"

# Disable rspec in-terminal screenshots
alias rspec="CAPYBARA_INLINE_SCREENSHOT=artifact bundle exec rspec"