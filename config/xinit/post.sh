# Start i3!
exec i3

# Load nvidia settings if they exist
[[ -f ~/.nvidia-settings-rc ]] && nvidia-settings --load-config-only
