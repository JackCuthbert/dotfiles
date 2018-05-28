## dotfiles

### installation

#### homebrew (macOS)

```bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log`

brew bundle
```

#### fresh

```bash
curl -sL https://get.freshshell.com | bash

# Link `.freshrc` to home folder
ln -s "~/.dotfiles/freshrc.sh" "~/.freshrc"
```

#### zplug
```bash
curl -sL zplug.sh/installer | zsh
```

#### NVM 

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash`
```

#### TPM

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

#### VimPlug

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
