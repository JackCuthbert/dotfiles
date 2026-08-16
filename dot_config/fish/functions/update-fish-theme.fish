#!/usr/bin/env fish --no-config
function update-fish-theme
  set -l system_theme (defaults read -g AppleInterfaceStyle 2>/dev/null; or echo "Light")

  if [ "$system_theme" = "Light" ]
    echo "Setting light theme: Catppuccin Latte"
    echo "y" | fish_config theme save "Catppuccin Latte"
  else
    echo "Setting dark theme: Catppuccin Mocha"
    echo "y" | fish_config theme save "Catppuccin Mocha"
  end
end
