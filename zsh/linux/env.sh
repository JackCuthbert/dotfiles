#######
#
# Update local binary path
#
#######
export PATH=/home/jack/bin:$PATH

#######
#
# Generic env vars
#
#######
export QT_QPA_PLATFORMTHEME=qt5ct

#######
#
# Use pixel-perfect scrolling in firefox
#
#######
export MOZ_USE_XINPUT2=1

#######
#
# Setup socket for ssh agent
#
#######
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

#######
#
# Fix VSCode not being able to send files to trash
# https://github.com/Microsoft/vscode/issues/13189
#
#######
export ELECTRON_TRASH=gio

######
#
# Go environment path
#
######
export GOPATH="/home/jack/Projects/go"
