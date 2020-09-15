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
ln -s "~/.dotfiles/freshrc.sh" "~/.freshrc"
bash -c "`curl -sL https://get.freshshell.com`"
```

### [zplugin](https://github.com/zdharma/zplugin)

```bash
mkdir ~/.zinit
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
```

### [vimplug](https://github.com/junegunn/vim-plug) for [neovim](https://neovim.io/)

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### [sdkman](https://github.com/sdkman/sdkman-cli)

```bash
curl -s https://get.sdkman.io | bash
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
file containing:

```
SSH_AGENT_PID	DEFAULT=
SSH_AUTH_SOCK	DEFAULT="${XDG_RUNTIME_DIR}/gnupg/S.gpg-agent.ssh"
```
