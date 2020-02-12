# X and i3 need a DISPLAY environment variable
systemctl --user import-environment DISPLAY

# Setup Xresources for term if they exist
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Load nvidia settings if they exist
[[ -f ~/.nvidia-settings-rc ]] && nvidia-settings --load-config-only

# disable blanking and enable dpms features, 5 min timeouts
xset s off
xset s no blank
xset dpms 300 300 300

# set capslock to be control
setxkbmap -option caps:ctrl_modifier

# Start i3!
exec i3
