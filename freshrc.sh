# NOTE: Headings done with http://www.patorjk.com/software/taag/#p=display&f=ANSI Shadow&t=SOME_TEXT

#
# ███████╗██████╗ ███████╗███████╗██╗  ██╗
# ██╔════╝██╔══██╗██╔════╝██╔════╝██║  ██║
# █████╗  ██████╔╝█████╗  ███████╗███████║
# ██╔══╝  ██╔══██╗██╔══╝  ╚════██║██╔══██║
# ██║     ██║  ██║███████╗███████║██║  ██║
# ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝
#
fresh freshshell/fresh bin/fresh --bin
fresh freshshell/fresh contrib/source-build.sh --file=~/.zshrc

#
# ███████╗███████╗██╗  ██╗
# ╚══███╔╝██╔════╝██║  ██║
#   ███╔╝ ███████╗███████║
#  ███╔╝  ╚════██║██╔══██║
# ███████╗███████║██║  ██║
# ╚══════╝╚══════╝╚═╝  ╚═╝
#
fresh-options --file=~/.zshrc --marker
  fresh config/zsh/env.zsh
  fresh config/zsh/alias.zsh
  fresh config/zsh/history.zsh
  fresh config/zsh/starship.zsh
  fresh config/zsh/nvm.zsh
  fresh config/zsh/direnv.zsh
  fresh config/zsh/vi-mode.zsh
  fresh config/zsh/startx.zsh
  fresh config/zsh/keychain.zsh
  fresh config/zsh/zplugin.zsh # NOTE: zplugin must be last
fresh-options

#
# ██╗  ██╗ ██████╗ ██████╗  ██████╗
# ╚██╗██╔╝██╔═══██╗██╔══██╗██╔════╝
#  ╚███╔╝ ██║   ██║██████╔╝██║  ███╗
#  ██╔██╗ ██║   ██║██╔══██╗██║   ██║
# ██╔╝ ██╗╚██████╔╝██║  ██║╚██████╔╝
# ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝
#
fresh-options --file=~/.xinitrc --marker
  # NOTE: Must be first
  # Load everything that the x server needs
  fresh config/xinit/pre.sh

  # Overrides for desktop
  if [[ "$(hostname)" == "kanade" ]]; then
    fresh config/xinit/kanade/\*
  fi

  # NOTE: Must be last
  # start window manager
  fresh config/xinit/post.sh
fresh-options

# Global Xorg startup config
fresh config/xserverrc.conf --file=~/.xserverrc

# Colours and font configureation for Xorg
fresh config/xresources.conf --file=~/.Xresources

#
#  ██████╗ ██████╗ ███╗   ███╗██████╗ ████████╗ ██████╗ ███╗   ██╗
# ██╔════╝██╔═══██╗████╗ ████║██╔══██╗╚══██╔══╝██╔═══██╗████╗  ██║
# ██║     ██║   ██║██╔████╔██║██████╔╝   ██║   ██║   ██║██╔██╗ ██║
# ██║     ██║   ██║██║╚██╔╝██║██╔═══╝    ██║   ██║   ██║██║╚██╗██║
# ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║        ██║   ╚██████╔╝██║ ╚████║
#  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝        ╚═╝    ╚═════╝ ╚═╝  ╚═══╝
#
fresh-options --file=~/.config/compton.conf --marker
  fresh config/compton/\*.conf
fresh-options

#
# ██╗██████╗      ██████╗  █████╗ ██████╗ ███████╗
# ██║╚════██╗    ██╔════╝ ██╔══██╗██╔══██╗██╔════╝
# ██║ █████╔╝    ██║  ███╗███████║██████╔╝███████╗
# ██║ ╚═══██╗    ██║   ██║██╔══██║██╔═══╝ ╚════██║
# ██║██████╔╝    ╚██████╔╝██║  ██║██║     ███████║
# ╚═╝╚═════╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚══════╝
#
fresh-options --file=~/.config/i3/config --marker
  fresh config/i3/colors.conf # NOTE: Should be first!

  fresh config/i3/default.conf
  fresh config/i3/bar.conf

  fresh config/i3/modes/\*.conf
  fresh config/i3/keybindings/\*.conf

  fresh config/i3/startup.conf # NOTE: Should be last!
fresh-options

#
#     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗
#    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝
#    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
#    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
# ██╗╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
# ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝
#
fresh config/dunst.conf --file=~/.config/dunst/dunstrc
fresh config/i3status.conf --file=~/.i3status.conf
fresh config/mpd.conf --file=~/.config/mpd/mpd.conf
fresh config/ranger.conf --file=~/.config/ranger/rc.conf
fresh config/redshift.conf --file=~/.config/redshift.conf
fresh config/rofi/dracula.rasi --file=~/.config/rofi/dracula.rasi
fresh config/rofi/rofi.conf --file=~/.config/rofi/config
fresh config/ssh.conf --file=~/.ssh/config
fresh config/starship.toml --file=~/.config/starship.toml
fresh config/autorandr/postswitch --bin=~/.config/autorandr/postswitch

#
#  ██████╗ ██████╗  ██████╗
# ██╔════╝ ██╔══██╗██╔════╝
# ██║  ███╗██████╔╝██║  ███╗
# ██║   ██║██╔═══╝ ██║   ██║
# ╚██████╔╝██║     ╚██████╔╝
#  ╚═════╝ ╚═╝      ╚═════╝
#
fresh config/gpg/gpg.conf --file=~/.gnupg/gpg.conf
fresh config/gpg/gpg-agent.conf --file=~/.gnupg/gpg-agent.conf

#
# ███╗   ██╗ ██████╗███╗   ███╗██████╗  ██████╗██████╗ ██████╗
# ████╗  ██║██╔════╝████╗ ████║██╔══██╗██╔════╝██╔══██╗██╔══██╗
# ██╔██╗ ██║██║     ██╔████╔██║██████╔╝██║     ██████╔╝██████╔╝
# ██║╚██╗██║██║     ██║╚██╔╝██║██╔═══╝ ██║     ██╔═══╝ ██╔═══╝
# ██║ ╚████║╚██████╗██║ ╚═╝ ██║██║     ╚██████╗██║     ██║
# ╚═╝  ╚═══╝ ╚═════╝╚═╝     ╚═╝╚═╝      ╚═════╝╚═╝     ╚═╝
#
fresh config/ncmpcpp/config.conf --file=~/.config/ncmpcpp/config
fresh config/ncmpcpp/bindings.conf --file=~/.config/ncmpcpp/bindings

#
# ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
# ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
# ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
# ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
# ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
# ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
#
fresh config/nvim/init.vim --file=~/.config/nvim/init.vim
fresh config/nvim/coc-settings.json --file=~/.config/nvim/coc-settings.json
fresh-options --file=~/.config/nvim/init.vim --marker='"'
  fresh config/nvim/settings/\*.vim
  fresh config/nvim/plug-config/\*.vim
fresh-options

#
# ████████╗███╗   ███╗██╗   ██╗██╗  ██╗
# ╚══██╔══╝████╗ ████║██║   ██║╚██╗██╔╝
#    ██║   ██╔████╔██║██║   ██║ ╚███╔╝
#    ██║   ██║╚██╔╝██║██║   ██║ ██╔██╗
#    ██║   ██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗
#    ╚═╝   ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝
#
fresh-options --file=~/.tmux.conf --marker
  fresh config/tmux/plugins.conf
  fresh config/tmux/config/\*
fresh-options

#
#  █████╗ ██╗      █████╗  ██████╗██████╗ ██╗████████╗████████╗██╗   ██╗
# ██╔══██╗██║     ██╔══██╗██╔════╝██╔══██╗██║╚══██╔══╝╚══██╔══╝╚██╗ ██╔╝
# ███████║██║     ███████║██║     ██████╔╝██║   ██║      ██║    ╚████╔╝
# ██╔══██║██║     ██╔══██║██║     ██╔══██╗██║   ██║      ██║     ╚██╔
# ██║  ██║███████╗██║  ██║╚██████╗██║  ██║██║   ██║      ██║      ██║
# ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝   ╚═╝      ╚═╝      ╚═╝
#
fresh-options --file=~/.config/alacritty/alacritty.yml --marker=#
  fresh config/alacritty/\*
fresh-options

#
# ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗
# ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
# ███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗
# ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║
# ███████║╚██████╗██║  ██║██║██║        ██║   ███████║
# ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝
#
fresh-options --bin
  fresh bin/\*
fresh-options

#
#  ██████╗ ██╗████████╗
# ██╔════╝ ██║╚══██╔══╝
# ██║  ███╗██║   ██║
# ██║   ██║██║   ██║
# ╚██████╔╝██║   ██║
#  ╚═════╝ ╚═╝   ╚═╝
#
fresh-options --file
  fresh config/git/\*
fresh-options

fresh-options --file=~/.gitignore_global --marker
  # Global ignores
  fresh github/gitignore Global/macOS.gitignore
  fresh github/gitignore Global/Vagrant.gitignore
  fresh github/gitignore Global/Vim.gitignore
  fresh github/gitignore Global/VisualStudioCode.gitignore
  fresh github/gitignore Global/Windows.gitignore
  fresh github/gitignore Global/Xcode.gitignore

  # Language specific
  fresh github/gitignore Node.gitignore
fresh-options

