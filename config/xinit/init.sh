# i3 needs this
systemctl --user import-environment DISPLAY

# Setup Xresources for term
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Key binding fixes
xset r rate 200 100
