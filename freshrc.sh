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

# 1. Run on login?
# 2. May take some time to run
# 3. Before everything else?
fresh-options --file=~/.zlogin --marker
  fresh config/zsh/startx.zsh
fresh-options

# 1. Needed by something in .zshrc?
# 2. Needed by a command to be interactive?
# 3. Needs to be updated on every new shell?
fresh-options --file=~/.zshenv --marker
  fresh config/zsh/env.zsh
  fresh config/zsh/alias.zsh
fresh-options

# 1. Run with interactive shell?
# 2. Initialising a shell modules?
fresh-options --file=~/.zshrc --marker
  fresh config/zsh/keychain.zsh
  fresh config/zsh/history.zsh
  fresh config/zsh/vi-mode.zsh
  fresh config/zsh/direnv.zsh
  fresh config/zsh/starship.zsh
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
# Initial xorg commands (setup DISPLAY, start i3, etc)
fresh config/xorg/xinit.sh --file=~/.xinitrc

# Global Xorg server startup config
fresh config/xorg/xserverrc.conf --file=~/.xserverrc

# Colours and font configureation for Xorg
fresh config/xorg/xresources.conf --file=~/.Xresources

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
fresh-options --file=~/.config/nvim/init.vim --marker='"'
  fresh config/nvim/plugins.vim # NOTE: Must be first
  fresh config/nvim/nvim-config/\*.vim
  fresh config/nvim/plugin-config/\*.vim
fresh-options
fresh config/nvim/coc-settings.json --file=~/.config/nvim/coc-settings.json

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
  fresh github/gitignore Global/GPG.gitignore
  fresh github/gitignore Global/Vagrant.gitignore
  fresh github/gitignore Global/Vim.gitignore
  fresh github/gitignore Global/VisualStudioCode.gitignore
  fresh github/gitignore Global/Windows.gitignore
  fresh github/gitignore Global/Xcode.gitignore
  fresh github/gitignore Global/macOS.gitignore

  # Language specific
  fresh github/gitignore Go.gitignore
  fresh github/gitignore Node.gitignore
  fresh github/gitignore Rust.gitignore
fresh-options

