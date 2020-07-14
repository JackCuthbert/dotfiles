# Generic env vars
export QT_QPA_PLATFORMTHEME=qt5ct
export EDITOR="nvim"
export TERMINAL="alacritty"

# Use pixel-perfect scrolling in firefox
export MOZ_USE_XINPUT2=1

# Fix VSCode not being able to send files to trash
# https://github.com/Microsoft/vscode/issues/13189
export ELECTRON_TRASH=gio


# thefuck plugin from zplug
export THEFUCK_REQUIRE_CONFIRMATION="false"
export THEFUCK_EXCLUDE_RULES='git_pull:git_push'

# auto suggestions config
export ZSH_AUTOSUGGEST_USE_ASYNC="true"

# Disable scaling for alacritty
export WINIT_HIDPI_FACTOR=1

# fff configuration
export FFF_COL1=2 # green directories
export FFF_COL2=5 # pink statusbar
export FFF_COL3=3 # yellow selection

# Make NVM fast again
export NVM_LAZY_LOAD=false
