-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config = {
	enable_tab_bar = false,
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",
	default_cursor_style = "BlinkingBar",
	font = wezterm.font("MesloLGS Nerd Font Mono", { weight = "Regular", italic = true }),
	font_size = 11,
	color_scheme = "Dracula",
	keys = {
		{ key = "t", mods = "CTRL", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "w", mods = "CTRL", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
		{
			key = "d",
			mods = "CTRL",
			action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
		},
		{
			key = "e",
			mods = "CTRL",
			action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
		},

		-- Switch to the next tab
		{ key = "RightArrow", mods = "CTRL", action = wezterm.action({ ActivateTabRelative = 1 }) },

		-- Switch to the previous tab
		{ key = "LeftArrow", mods = "CTRL", action = wezterm.action({ ActivateTabRelative = -1 }) },
	},
}
-- my coolnight colorscheme
-- and finally, return the configuration to wezterm
return config
