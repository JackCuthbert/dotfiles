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
    fresh zsh/linux/\*
  fi

  if [[ "$(uname)" == "Darwin" ]]; then
    fresh zsh/mac/\*
  fi

  # NOTE: Must be last
  fresh zsh/zplug.sh

  fresh bin/scripts/motd
fresh-options


#########################
#
# Linux specific dotfiles
#
#########################
if [[ "$(uname)" == "Linux" ]]; then
  # Xorg config
  fresh-options --file=~/.xinitrc --marker
    # NOTE: Must be first
    # Load everything that the x server needs
    fresh config/xinit/pre.sh

    if [[ "$(hostname)" == "war-machine" ]]; then
      fresh config/xinit/war-machine/\*
    fi

    if [[ "$(hostname)" == "pepper" ]]; then
      fresh config/xinit/pepper/\*
    fi

    # NOTE: Must be last
    # start window manager
    fresh config/xinit/post.sh
  fresh-options

  fresh-options --file=~/.Xresources --marker="!"
    fresh config/xresources/general.conf

    if [[ "$(hostname)" == "war-machine" ]]; then
      fresh config/xresources/war-machine.conf
    fi

    if [[ "$(hostname)" == "pepper" ]]; then
      fresh config/xresources/pepper.conf
    fi
  fresh-options

  # compton config
  fresh-options --file=~/.config/compton.conf --marker
    fresh config/compton/window-settings.conf

    if [[ "$(hostname)" == "war-machine" ]]; then
      fresh config/compton/war-machine.conf
    fi

    if [[ "$(hostname)" == "pepper" ]]; then
      fresh config/compton/pepper.conf
    fi
  fresh-options

  # .config files
  fresh config/dunst.conf --file=~/.config/dunst/dunstrc
  fresh config/i3blocks.conf --file=~/.config/i3blocks/config
  fresh config/redshift.conf --file=~/.config/redshift.conf
  fresh config/mpd.conf --file=~/.config/mpd/mpd.conf
  fresh config/ncmpcpp.conf --file=~/.config/ncmpcpp/config
  fresh config/ranger.conf --file=~/.config/ranger/rc.conf
  fresh config/polybar.ini --file=~/.config/polybar/config

  # .config files (rofi needs multiple files for themes)
  fresh config/rofi/rofi.conf --file=~/.config/rofi/config
  fresh config/rofi/dracula.rasi --file=~/.config/rofi/dracula.rasi
fi

#######################
#
# Mac specific dotfiles
#
#######################
if [[ "$(uname)" == "Darwin" ]]; then
  fresh config/chunkwm/chunkwmrc.sh --file=~/.chunkwmrc
  fresh config/chunkwm/skhdrc.sh --file=~/.skhdrc
fi


###################
#
# i3 window manager
#
###################
fresh-options --file=~/.config/i3/config --marker
  fresh config/i3/general.conf

  if [[ "$(hostname)" == "war-machine" ]]; then
    fresh config/i3/war-machine.conf
  fi

  if [[ "$(hostname)" == "pepper" ]]; then
    fresh config/i3/pepper.conf
  fi
fresh-options


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
  if [[ "$(uname)" == "Darwin" ]]; then
    fresh config/kitty/mac.conf
  fi

  if [[ "$(uname)" == "Linux" ]]; then
    fresh config/kitty/linux.conf
  fi

  fresh config/kitty/general/\*
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
