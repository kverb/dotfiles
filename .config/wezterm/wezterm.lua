local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}
config.default_prog = { '/usr/bin/fish', '-l' }


config.color_scheme = 'Gruvbox Material (Gogh)'
config.colors = {
  background = 'black',
  tab_bar = {
    background = '#000000',
    -- The color of the inactive tab bar edge/divider
    inactive_tab_edge = '#b0e0e6',
  },
}

config.font = wezterm.font 'Berkeley Mono Variable'
-- config.font = wezterm.font 'Kode Mono'
config.line_height = 1.2


local font_size
if hostname == 'icebox' then
  -- Use a bigger font on the ultrawide
  font_size = 15.0
else
  font_size = 13.0
end

config.font_size = font_size

config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font 'Kode Mono',
  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#000000',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#333333',
}

config.keys = {
  -- paste from the clipboard
  { key = 'v', mods = 'ALT', action = act.PasteFrom 'Clipboard' },
}

-- config.debug_key_events = true

return config
