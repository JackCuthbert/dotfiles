# Fresh
fresh freshshell/fresh bin/fresh --bin
fresh freshshell/fresh contrib/source-build.sh --file=~/.zshrc

# Fish
fresh config/fish/config.fish --file=~/.config/fish/config.fish
fresh config/fish/fish_plugins --file=~/.config/fish/fish_plugins
fresh config/fish/completions/poetry.fish --file=~/.config/fish/completions/poetry.fish

# JetBrains
fresh config/ideavimrc.vim --file=~/.ideavimrc

# Xorg
fresh-options --file
  fresh config/xorg/\*
fresh-options

# Custom scripts
fresh-options --bin
  fresh bin/\*
fresh-options

# Git
fresh-options --file
  fresh config/git/\*
fresh-options

# i3
fresh config/i3status.conf --file=~/.i3status.conf
fresh-options --file=~/.config/i3/config --marker
  fresh config/i3/appearance.conf
  fresh config/i3/modifiers.conf

  fresh config/i3/modes/\*.conf
  fresh config/i3/keybindings/\*.conf

  # theme
  fresh config/i3/theme/one-dark.conf

  # startup must be last
  fresh config/i3/startup.conf
fresh-options

# .config
fresh config/ranger.conf --file=~/.config/ranger/rc.conf
fresh config/redshift.ini --file=~/.config/redshift/redshift.conf
fresh config/flameshot.ini --file=~/.config/flameshot/flameshot.ini
fresh config/starship.toml --file=~/.config/starship.toml
fresh config/fdignore --file

# Dunst
fresh-options --file=~/.config/dunst/dunstrc
  fresh config/dunst/default.conf
  fresh config/dunst/theme/one-dark.conf
fresh-options

# Rofi
fresh config/rofi/default.conf --file=~/.config/rofi/config
fresh config/rofi/theme/base16-default-dark.rasi --file=~/.config/rofi/base16-default-dark.rasi
fresh config/rofi/theme/one-dark.rasi --file=~/.config/rofi/one-dark.rasi

# GTK 2 & 3
fresh config/gtk/gtkrc-2.0 --file=~/.gtkrc-2.0
fresh config/gtk/settings.ini --file=~/.config/gtk-3.0/settings.ini

# SSH
fresh config/ssh/ssh.conf --file=~/.ssh/config
fresh config/ssh/pam_environment --file=~/.pam_environment

# GPG
fresh config/gpg/gpg.conf --file=~/.gnupg/gpg.conf
fresh config/gpg/sshcontrol --file=~/.gnupg/sshcontrol
fresh config/gpg/gpg-agent.conf --file=~/.gnupg/gpg-agent.conf

# Neovim
fresh-options --file=~/.config/nvim/init.vim --marker='"'
  fresh config/nvim/plugs.vim # NOTE: Must be first
  fresh config/nvim/theme.vim

  fresh config/nvim/nvim-config/\*.vim
  fresh config/nvim/plug-config/\*.vim
fresh-options
fresh config/nvim/coc.nvim/settings.json --file=~/.config/nvim/coc-settings.json

# Alacritty
fresh-options --file=~/.config/alacritty/alacritty.yml --marker=#
  fresh config/alacritty/\*
  fresh eendroroy/alacritty-theme themes/one_dark.yaml
fresh-options

fresh-options --file=~/.gitignore_global --marker
  # Global ignores
  fresh github/gitignore Global/GPG.gitignore
  fresh github/gitignore Global/Vim.gitignore
  fresh github/gitignore Global/VisualStudioCode.gitignore
  fresh github/gitignore Global/JetBrains.gitignore

  # Language specific
  fresh github/gitignore Go.gitignore
  fresh github/gitignore Node.gitignore
  fresh github/gitignore Rust.gitignore
  fresh github/gitignore Kotlin.gitignore
  fresh github/gitignore Java.gitignore
fresh-options

