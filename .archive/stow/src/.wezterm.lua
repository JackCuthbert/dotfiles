-- Pull in the wezterm API
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_prog = { '/opt/homebrew/bin/fish' }

config.hide_tab_bar_if_only_one_tab = true
config.window_frame = {
  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#282c34',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#282c34',
}

config.color_scheme = 'OneDark (base16)'
config.font = wezterm.font 'Monaspace Neon'
config.font_size = 16.0

return config
