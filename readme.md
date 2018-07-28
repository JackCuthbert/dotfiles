# dotfiles

Supports Arch Linux and macOS.

![arch linux preview](preview.png)

## setup

Install some base packages (Arch):


```bash
sudo pacman -S git vim neovim zsh
```

> TODO: Complete package list for pacman + Aura

Install some base packages (macOS):

```bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log`

brew bundle
```

> TODO: Complete package list for homebrew

Install zplug and fresh:

```bash
# zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# fresh
bash -c "`curl -sL https://get.freshshell.com`"

# remove the auto-generated freshrc and link new one
rm ~/.freshrc
ln -s "~/.dotfiles/freshrc.sh" "~/.freshrc"
```

Install version managers for tools:

```bash
# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash`

# TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# VimPlug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

