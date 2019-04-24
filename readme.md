![header](header.jpg)

## Setup OS

* Arch Linux
  1. [Download Arch Linux](https://www.archlinux.org/download/)
  2. [USB flash installation media](https://wiki.archlinux.org/index.php/USB_flash_installation_media)
  3. [Installation Guide](https://wiki.archlinux.org/index.php/Installation_Guide)
  4. [GitHub Gist](https://gist.github.com/njam/85ab2771b40ccc7ddcef878eb82a0fe9)
* macOS
  1. [Download macOS](http://appstore.com/mac/macoshighsierra)
  2. [How to create a bootable installer for macOS](https://support.apple.com/en-us/HT201372)
  3. Hold `opt` during boot

### Partitions

Use `fdisk` to create partitions:

> This section does **not** implement LUKs encryption. Refer to the GitHub Gist installation for details on how to set this up.

```bash
fdisk /dev/sdX
```

partition | mount point        | type            | size
----------|--------------------|-----------------|-------------
1         | `/boot`            | `ef00`          | `512M`
2         | `[swap]`           | `8200`          | `8G`
3         | `/`                | `8300`          | rest of disk
3a        | `/@root` (`/`)     | btrfs subvolume |
3b        | `/@var` (`/var`)   | btrfs subvolume |
3c        | `/@home` (`/home`) | btrfs subvolume |

Create filesystems:

```bash
mkfs.fat -F32 /dev/sdX1
mkswap /dev/sdX2
mkfs.btrfs -L btrfs_root /dev/sdX3
```

Create btrfs subvolumes:

```bash
mount -t btrfs /dev/sdX2 /mnt
btrfs subvolume create /mnt/@root
btrfs subvolume create /mnt/@var
btrfs subvolume create /mnt/@home
```

Mount volumes:

```bash
umount /mnt
mount -o subvol=@root /dev/sdX /mnt
mkdir /mnt/{boot,var,home}
mount -o subvol=@var /dev/sdX3 /mnt/var
mount -o subvol=@home /dev/sdX3 /mnt/home
mount /dev/sdX1 /mnt/boot
```

Install system:

```bash
vim /etc/pacman.d/mirrorlist # order mirrorlist
pacstrap /mnt base base-devel btrfs-progs zsh vim git sudo efibootmgr
```

> Refer back to the installation guide here

### Users

Create main user and add to `wheel` group:

```bash
useradd -m -g users -G wheel -s /bin/zsh jack
passwd jack
```

Use `visudo` to allow `wheel` group to execute `sudo` commands:

```bash
sudo pacman -S sudo
visudo
```

## Software

Install some pre-requisite software and update the system to allow further dotfiles setup.

> By this point you should have set up an internet connection with `netctl` so we can download packages. We will be installing `NetworkManager` instead to manage connections going forward.

This is by no means a comprehensive list and more software may be required later (like nvidia or intel drivers, system-specific tweaks, and software, etc).

```bash
sudo pacman -Syu \
  # gui
  i3-gaps \
  i3lock \
  i3status \
  redshift \
  xautolock \
  xorg-server \
  xorg-xinit \
  # networking
  network-manager-applet \
  networkmanager \
  # sound
  alsa-utils \
  pulseaudio \
  pulseaudio-alsa \
  # cli
  direnv \
  exa \
  feh \
  imagemagick \
  kitty \
  neovim \
  openssh \
  scrot \
  # fonts
  noto-fonts \
  noto-fonts-cjk \
  noto-fonts-emoji \
  otf-fira-code \
  otf-san-francisco \
  ttf-liberation \
  # apps
  firefox \
  xclip \
  maim \
  thunar

sudo netctl stop-all
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service
```

* See [systemd configuration](./systemd) for custom unit files
* See [xorg configruation](./xorg) for X11 configuration

### Aura

Install [Aura](https://github.com/aurapm/aura) to manage [AUR](https://aur.archlinux.org) packages:

```bash
wget -O PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=aura-bin && \
  makepkg --install && \
  rm PKGBUILD
```

### Homebrew (macOS)

Install [Homebrew](https://brew.sh/) to manage packages on macOS:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
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
