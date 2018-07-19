# Handle updating fresh
fresh freshshell/fresh bin/fresh --bin
fresh freshshell/fresh contrib/source-build.sh --file=~/.zshrc


########
#
# .zshrc
#
########
fresh-options --file=~/.zshrc --marker
  fresh zsh/env.sh
  fresh zsh/alias.sh
  fresh zsh/history.sh
  fresh zsh/nvm.sh
  fresh zsh/direnv.sh
  fresh zsh/vi-mode.sh

  if [[ "$(uname)" == "Linux" ]]; then
    fresh zsh/startx.sh
    fresh zsh/alias.linux.sh
    fresh zsh/env.linux.sh
    fresh zsh/zplug-init.linux.sh
  fi

  if [[ "$(uname)" == "Darwin" ]]; then
    fresh zsh/env.mac.sh
    fresh zsh/alias.mac.sh
    fresh zsh/zplug-init.mac.sh
    fresh zsh/ssh-init.mac.sh
  fi

  # NOTE: Must be last
  fresh zsh/zplug-plugins.sh
  fresh zsh/zplug-update-check.sh

  fresh bin/scripts/motd
fresh-options


#########################
#
# Linux specific dotfiles
#
#########################
if [[ "$(uname)" == "Linux" ]]; then
  # Xorg config
  fresh xinitrc --file
  fresh Xresources --file

  # .config files
  fresh config/compton.conf --file=~/.config/compton.conf
  fresh config/dunst.conf --file=~/.config/dunst/dunstrc
  fresh config/i3.conf --file=~/.config/i3/config
  fresh config/i3blocks.conf --file=~/.config/i3blocks/config
  fresh config/redshift.conf --file=~/.config/redshift.conf

  # .config files (rofi needs multiple files for themes)
  fresh config/rofi/rofi.conf --file=~/.config/rofi/config
  fresh config/rofi/dracula.rasi --file=~/.config/rofi/dracula.rasi
fi


########
#
# neovim
#
########
fresh config/nvim/init.vim --file=~/.config/nvim/init.vim
fresh-options --file=~/.config/nvim/init.vim --marker='"'
  fresh config/nvim/settings/\*.vim
  fresh config/nvim/plug-config/\*.vim
fresh-options


########
#
# tmux
#
########
fresh-options --file=~/.tmux.conf --marker
  if [[ "$(uname)" == "Darwin" ]]; then
    fresh config/tmux/tmux.mac.conf
  fi

  fresh config/tmux/plugins.conf
  fresh config/tmux/config/\*
fresh-options


########
#
# kitty.conf
#
########
fresh-options --file==~/.config/kitty/kitty.conf --marker
  fresh config/kitty/\*
fresh-options


##################
#
# universal config
#
##################
fresh config/ssh.conf --file=~/.ssh/config


################
#
# Custom scripts
#
################
fresh-options --bin
  if [[ "$(uname)" == "Darwin" ]]; then
    fresh bin/mac/\*
  fi

  if [[ "$(uname)" == "Linux" ]]; then
    fresh bin/linux/\*
  fi

  fresh bin/scripts/\*
fresh-options


#####
#
# Git
#
#####
fresh-options --file
  fresh git/\*
fresh-options

# Global gitignores
fresh-options --file=~/.gitignore_global --marker
  fresh github/gitignore Global/macOS.gitignore
  fresh github/gitignore Global/Vagrant.gitignore
  fresh github/gitignore Global/Vim.gitignore
  fresh github/gitignore Global/VisualStudioCode.gitignore
  fresh github/gitignore Global/Windows.gitignore
  fresh github/gitignore Global/Xcode.gitignore
fresh-options
