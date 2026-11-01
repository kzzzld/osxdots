local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- look and feel
config.color_scheme = "nord"
config.window_background_opacity = 0.9
config.colors = {
	tab_bar = {
		background = "#2e3440",
		active_tab = {
			bg_color = "#3b4252",
			fg_color = "#d8dee9",
		},
		inactive_tab = {
			bg_color = "#2e3440",
			fg_color = "#d8dee9",
		},
		inactive_tab_hover = {
			bg_color = "#434c5e",
			fg_color = "#eceff4",
		},
		new_tab = {
			bg_color = "#2e3440",
			fg_color = "#d8dee9",
		},
		new_tab_hover = {
			bg_color = "#434c5e",
			fg_color = "#eceff4",
		},
	},
}

-- font
config.font = wezterm.font("Iosevka Nerd Font")
config.font_size = 14

-- window
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
	left = 25,
	right = 25,
	top = 25,
	bottom = 25,
}

-- tabs
config.use_fancy_tab_bar = false
config.tab_max_width = 32
config.hide_tab_bar_if_only_one_tab = true

-- keys
config.keys = {
	{
		key = "r",
		mods = "ALT|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
	{
		key = "d",
		mods = "ALT",
		action = wezterm.action.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
	},
	{
		key = "s",
		mods = "ALT",
		action = wezterm.action.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},
	{
		key = "t",
		mods = "ALT",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "h",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "w",
		mods = "ALT",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{ key = "1", mods = "ALT", action = wezterm.action.ActivateTab(0) },
	{ key = "2", mods = "ALT", action = wezterm.action.ActivateTab(1) },
	{ key = "3", mods = "ALT", action = wezterm.action.ActivateTab(2) },
	{ key = "4", mods = "ALT", action = wezterm.action.ActivateTab(3) },
	{ key = "6", mods = "ALT", action = wezterm.action.ActivateTab(5) },
	{ key = "7", mods = "ALT", action = wezterm.action.ActivateTab(6) },
	{ key = "8", mods = "ALT", action = wezterm.action.ActivateTab(7) },
	{ key = "9", mods = "ALT", action = wezterm.action.ActivateTab(8) },
}

return config
