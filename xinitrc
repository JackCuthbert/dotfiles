# i3 needs this
systemctl --user import-environment DISPLAY

# Setup Xresources for term
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Key binding fixes
xset r rate 200 100
setxkbmap -option ctrl:nocaps

# Enable trackpad while typing
xinput set-prop 12 293 0

# Start i3!
exec i3
