hl.curve("almostLinear", { type = "bezier", points = { { 0.00, 0.00 }, { 0.95, 0.97 } } })
hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 1.5,
	bezier = "almostLinear",
})
hl.animation({
	leaf = "workspacesIn",
	enabled = true,
	speed = 1.5,
	bezier = "almostLinear",
})
hl.animation({
	leaf = "workspacesOut",
	enabled = true,
	speed = 1.0,
	bezier = "almostLinear",
})

hl.config({
	animations = {
		enabled = true,
	},
	-- https://wiki.hyprland.org/Configuring/Variables/#misc
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		vrr = 3,
	},
	xwayland = {
		force_zero_scaling = true,
	},
})
