# X and i3 need a DISPLAY environment variable
systemctl --user import-environment DISPLAY

# Force 96DPI
xrandr --dpi 96

# Setup Xresources for term
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# disable blanking and enable dpms features, 5 min timeouts
xset s off
xset s no blank
xset dpms 300 300 300
