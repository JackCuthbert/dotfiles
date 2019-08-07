![header](header.jpg)

## Setup OS

I've written [my own guide on installing Arch Linux](https://jackcuthbert.gitlab.io/knowledge/arch-linux/installation/readme.html) based on a few links below and my own preferences for Arch systems.

* Arch Linux
  1. [Download Arch Linux](https://www.archlinux.org/download/)
  2. [USB flash installation media](https://wiki.archlinux.org/index.php/USB_flash_installation_media)
  3. [Installation Guide](https://wiki.archlinux.org/index.php/Installation_Guide)
  4. [GitHub Gist](https://gist.github.com/njam/85ab2771b40ccc7ddcef878eb82a0fe9)

## Software

* See [`packagelist`](./packagelist) for complete software list
* See [systemd configuration](./systemd) for custom unit files
* See [xorg configuration](./xorg) for X11 configuration

### Aura

Install [Aura](https://github.com/aurapm/aura) to manage [AUR](https://aur.archlinux.org) packages:

```bash
wget -O PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=aura-bin && \
  makepkg --install && \
  rm PKGBUILD
```

## Dotfiles

Clone this dotfiles repo and install [fresh](https://freshshell.com):

```bash
git clone https://gitlab.com/JackCuthbert/dotfiles.git ~/.dotfiles
ln -s "~/.dotfiles/freshrc.sh" "~/.freshrc"
bash -c "`curl -sL https://get.freshshell.com`"
```

Install [zplug](https://github.com/zplug/zplug):

```bash
curl -sL --proto-redir -all,https \
  https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

Install [nvm](https://github.com/creationix/nvm):

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash`
```

Install [vimplug](https://github.com/junegunn/vim-plug) for [neovim](https://neovim.io/):

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Optional software

Install [OpenVPN](https://openvpn.net/) + [PIA](https://privateinternetaccess.com/) servers:

```bash
wget -O pia-nm.sh https://www.privateinternetaccess.com/installer/pia-nm.sh
chmod +x pia-nm.sh && sudo ./pia-nm.sh
# Select UDP and strong encryption
sudo systemctl restart NetworkManager.service
```
