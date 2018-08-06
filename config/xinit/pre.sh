# i3 needs this
systemctl --user import-environment DISPLAY

# Setup Xresources for term
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# set fast keyboard repeat rate
xset r rate 200 100

# disable mouse acceleration
xset m 0 0

# disable blanking and enable dpms features
xset s off
xset s no blank
xset dpms 300 300 300
