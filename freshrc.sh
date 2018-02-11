# Handle updating fresh
fresh freshshell/fresh bin/fresh --bin

# Zsh config
fresh-options --file=~/.zshrc --marker
  fresh zsh/\*
fresh-options

# Git config
fresh-options --file
  fresh git/\*
fresh-options

fresh-options --file=~/.gitignore_global --marker
  fresh github/gitignore Global/macOS.gitignore
  fresh github/gitignore Global/Vagrant.gitignore
  fresh github/gitignore Global/Vim.gitignore
  fresh github/gitignore Global/VisualStudioCode.gitignore
  fresh github/gitignore Global/Windows.gitignore
  fresh github/gitignore Global/Xcode.gitignore
fresh-options

# Xorg config
fresh xinitrc --file
fresh Xresources --file

# .config files
fresh config/i3.conf --file=~/.config/i3/config
fresh config/i3blocks.conf --file=~/.config/i3blocks/config
fresh config/redshift.conf --file=~/.config/redshift.conf
fresh config/compton.conf --file=~/.config/compton.conf
fresh config/dunst.conf --file=~/.config/dunst/dunstrc

# .config files (rofi needs multiple files for themes)
fresh config/rofi/rofi.conf --file=~/.config/rofi/config
fresh config/rofi/nord.rasi --file=~/.config/rofi/nord.rasi

# Custom scrupts
fresh-options --bin
  fresh bin/\*
fresh-options
