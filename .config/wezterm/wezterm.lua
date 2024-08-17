local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true
config.font_size = 10

config.window_decorations = "RESIZE"

config.color_scheme = 'Catppuccin Mocha'

return config
