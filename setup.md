# Setup OS

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

Install [Aura](https://github.com/aurapm/aura) to manage [AUR](https://aur.archlinux.org)
packages:

```bash
wget -O PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=aura-bin && \
  makepkg --install && \
  rm PKGBUILD
```

## Wallpaper

Wallpaper is set by placing a `wallpaper.jpg` file in the root of the dotfiles
directory.

## Dotfiles

Clone this dotfiles repo and install [fresh](https://freshshell.com):

```bash
git clone https://gitlab.com/JackCuthbert/dotfiles.git ~/.dotfiles
ln -s "~/.dotfiles/.freshrc" "~/.freshrc"
bash -c "`curl -sL https://get.freshshell.com`"
```

### [fisher](https://github.com/jorgebucaran/fisher)

```bash
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

### [asdf](https://asdf-vm.com)

[Check version here](https://asdf-vm.com/#/core-manage-asdf?id=install).

```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
mkdir -p ~/.config/fish/completions
ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
```

#### Nodejs

```bash
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf list-all nodejs
asdf install nodejs <version>
asdf global nodejs <version>
```

#### Java

```bash
asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf list-all java | rg adopt
asdf install java <version>
asdf global nodejs <version>
```

#### Kotlin

```bash
asdf plugin-add kotlin https://github.com/asdf-community/asdf-kotlin.git
asdf list-all kotlin
asdf install kotlin <version>
asdf global kotlin <version>
```

#### Maven

```bash
asdf plugin-add maven https://github.com/halcyon/asdf-maven
asdf list-all maven
asdf install maven <version>
asdf global maven <version>
```

#### Go

```bash
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf list-all golang
asdf install golang <version>
asdf global golang <version>
```

#### Python

```bash
asdf plugin-add python
asdf list-all python
asdf install python 3.x.x
asdf install python 2.x.x
asdf global python 3.x.x 2.x.x

asdf plugin-add poetry https://github.com/asdf-community/asdf-poetry.git
asdf list-all poetry
asdf install poetry <version>
asdf global poetry <version>
```

### [vimplug](https://github.com/junegunn/vim-plug) for [neovim](https://neovim.io/)

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### [Google Cloud SDK](https://cloud.google.com/sdk/)

```bash
# Find the latest version number here: https://cloud.google.com/sdk/docs/quickstart-linux
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-303.0.0-linux-x86_64.tar.gz
tar -zxf [ARCHIVE_FILE].tar.gz
mv google-cloud-sdk ~/.local/share/
```

## SSH + GPG

Install `gnome-keyring` and `seahorse`:

```
sudo pacman -S gnome-keyring seahorse
```

Add the following to the end of `/etc/pam.d/login`:

```
session    optional     pam_gnome_keyring.so auto_start
```

Disable the SSH component of gnome-keyring by:

```
cp /etc/xdg/autostart/gnome-keyring-ssh.desktop ~/.config/autostart/
echo "Hidden=true" >> ~/.config/autostart/gnome-keyring-ssh.desktop
```

Ensure the ssh agent points to the gpg ssh emulator with a `~/.pam_environment`
file containing (handled by [./config/ssh/pam_environment](./config/ssh/pam_environment)):

```
SSH_AGENT_PID	DEFAULT=
SSH_AUTH_SOCK	DEFAULT="${XDG_RUNTIME_DIR}/gnupg/S.gpg-agent.ssh"
```
