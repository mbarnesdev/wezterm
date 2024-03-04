require("math")

local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

local color_scheme = "Batman"
local font = "Fira Code"
local font_size = 12
local font_weight = "Medium"

config.color_scheme = color_scheme
config.background = {
	{
		source = {
			File = os.getenv("HOME") .. "/.config/wezterm/background.jpeg",
		},
		hsb = {
			brightness = 0.15,
		},
	},
}
config.font = wezterm.font(font, { weight = font_weight })
config.font_size = font_size
config.use_fancy_tab_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
