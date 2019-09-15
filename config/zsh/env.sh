# Generic env vars
export QT_QPA_PLATFORMTHEME=qt5ct
export EDITOR="nvim"
export TERMINAL="alacritty"
export PATH="$HOME/bin:$HOME/.cargo/bin:$PATH"
export GOPATH=$HOME/go
export NVM_LAZY_LOAD="true"

# Use pixel-perfect scrolling in firefox
export MOZ_USE_XINPUT2=1

# Setup socket for ssh agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Fix VSCode not being able to send files to trash
# https://github.com/Microsoft/vscode/issues/13189
export ELECTRON_TRASH=gio

# thefuck plugin from zplug
export THEFUCK_REQUIRE_CONFIRMATION="false"
export THEFUCK_EXCLUDE_RULES='git_pull:git_push'

# alias tips
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Alias tip: "

# auto suggestions config
export ZSH_AUTOSUGGEST_USE_ASYNC="true"

# Disable scaling for alacritty
export WINIT_HIDPI_FACTOR=1

# fff configuration
export FFF_COL1=2 # green directories
export FFF_COL2=5 # pink statusbar
export FFF_COL3=3 # yellow selection

# configure minimal theme
export MNML_NORMAL_CHAR=''
export MNML_INSERT_CHAR=''
export MNML_PROMPT=(mnml_ssh mnml_pyenv mnml_status mnml_keymap)
export MNML_RPROMPT=(mnml_git 'mnml_cwd 1')
export MNML_OK_COLOR='4'
export MNML_ERR_COLOR'1'
