hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("uwsm-app -- alacritty"), { description = "Terminal" })
hl.bind("SUPER + SHIFT + RETURN", hl.dsp.exec_cmd("uwsm-app -- chromium"), { description = "Browser" })
hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd("uwsm-app -- dolphin --new-window"), { description = "File manager" })
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("uwsm-app -- hyprlauncher"), { description = "Launcher" })
hl.bind("SUPER + SHIFT + A", hl.dsp.exec_cmd("pavucontrol"), { description = "Audio" })

-- Screenshots
hl.bind("SUPER + ALT + 4", hl.dsp.exec_cmd('grim -g "$(slurp -w 0)" - | wl-copy'))

-- WINDOW MANAGEMENT

-- Close windows
hl.bind("SUPER + W", hl.dsp.window.close(), { description = "Close window" })
hl.bind(
	"CTRL + ALT + DELETE",
	hl.dsp.exec_cmd("omarchy-hyprland-window-close-all"),
	{ description = "Close all windows" }
)

-- Control tiling
hl.bind("SUPER + J", hl.dsp.layout("togglesplit"), { description = "Toggle window split" })
hl.bind("SUPER + P", hl.dsp.window.pseudo(), { description = "Pseudo window" })
hl.bind("SUPER + T", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating/tiling" })
hl.bind(
	"SUPER + F",
	hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }),
	{ description = "Full screen" }
)
hl.bind(
	"SUPER + CTRL + F",
	hl.dsp.window.fullscreen_state({ internal = 0, client = 2, action = "toggle" }),
	{ description = "Tiled full screen" }
)
hl.bind(
	"SUPER + ALT + F",
	hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }),
	{ description = "Full width" }
)
hl.bind("SUPER + O", hl.dsp.exec_cmd("omarchy-hyprland-window-pop"), { description = "Pop window out" })
hl.bind(
	"SUPER + L",
	hl.dsp.exec_cmd("omarchy-hyprland-workspace-layout-toggle"),
	{ description = "Toggle workspace layout" }
)

-- WINDOW NAVIGATION & FOCUS

-- Move focus with arrow keys
hl.bind("SUPER + LEFT", hl.dsp.focus({ direction = "left" }), { description = "Focus left" })
hl.bind("SUPER + RIGHT", hl.dsp.focus({ direction = "right" }), { description = "Focus right" })
hl.bind("SUPER + UP", hl.dsp.focus({ direction = "up" }), { description = "Focus up" })
hl.bind("SUPER + DOWN", hl.dsp.focus({ direction = "down" }), { description = "Focus down" })

-- Swap windows
hl.bind("SUPER + SHIFT + h", hl.dsp.window.swap({ direction = "l" }), { description = "Swap left" })
hl.bind("SUPER + SHIFT + l", hl.dsp.window.swap({ direction = "r" }), { description = "Swap right" })
hl.bind("SUPER + SHIFT + k", hl.dsp.window.swap({ direction = "u" }), { description = "Swap up" })
hl.bind("SUPER + SHIFT + j", hl.dsp.window.swap({ direction = "d" }), { description = "Swap down" })

-- Cycle windows
hl.bind("ALT + TAB", hl.dsp.window.cycle_next({ next = true }), { description = "Next window" })
hl.bind("ALT + SHIFT + TAB", hl.dsp.window.cycle_next({ prev = true }), { description = "Previous window" })

-- Cycle monitors
hl.bind("CTRL + ALT + TAB", hl.dsp.focus({ monitor = "+1" }), { description = "Next monitor" })
hl.bind("CTRL + ALT + SHIFT + TAB", hl.dsp.focus({ monitor = -1 }), { description = "Previous monitor" })

-- WORKSPACE SWITCHING

-- Switch to workspace 1-10
hl.bind("SUPER + code:10", hl.dsp.focus({ workspace = 1 }), { description = "Workspace 1" })
hl.bind("SUPER + code:11", hl.dsp.focus({ workspace = 2 }), { description = "Workspace 2" })
hl.bind("SUPER + code:12", hl.dsp.focus({ workspace = 3 }), { description = "Workspace 3" })
hl.bind("SUPER + code:13", hl.dsp.focus({ workspace = 4 }), { description = "Workspace 4" })
hl.bind("SUPER + code:14", hl.dsp.focus({ workspace = 5 }), { description = "Workspace 5" })
hl.bind("SUPER + code:15", hl.dsp.focus({ workspace = 6 }), { description = "Workspace 6" })
hl.bind("SUPER + code:16", hl.dsp.focus({ workspace = 7 }), { description = "Workspace 7" })
hl.bind("SUPER + code:17", hl.dsp.focus({ workspace = 8 }), { description = "Workspace 8" })
hl.bind("SUPER + code:18", hl.dsp.focus({ workspace = 9 }), { description = "Workspace 9" })
hl.bind("SUPER + code:19", hl.dsp.focus({ workspace = 10 }), { description = "Workspace 10" })

-- Move window to workspace
hl.bind("SUPER + SHIFT + code:10", hl.dsp.window.move({ workspace = 1 }), { description = "Move to workspace 1" })
hl.bind("SUPER + SHIFT + code:11", hl.dsp.window.move({ workspace = 2 }), { description = "Move to workspace 2" })
hl.bind("SUPER + SHIFT + code:12", hl.dsp.window.move({ workspace = 3 }), { description = "Move to workspace 3" })
hl.bind("SUPER + SHIFT + code:13", hl.dsp.window.move({ workspace = 4 }), { description = "Move to workspace 4" })
hl.bind("SUPER + SHIFT + code:14", hl.dsp.window.move({ workspace = 5 }), { description = "Move to workspace 5" })
hl.bind("SUPER + SHIFT + code:15", hl.dsp.window.move({ workspace = 6 }), { description = "Move to workspace 6" })
hl.bind("SUPER + SHIFT + code:16", hl.dsp.window.move({ workspace = 7 }), { description = "Move to workspace 7" })
hl.bind("SUPER + SHIFT + code:17", hl.dsp.window.move({ workspace = 8 }), { description = "Move to workspace 8" })
hl.bind("SUPER + SHIFT + code:18", hl.dsp.window.move({ workspace = 9 }), { description = "Move to workspace 9" })
hl.bind("SUPER + SHIFT + code:19", hl.dsp.window.move({ workspace = 10 }), { description = "Move to workspace 10" })

-- Move window silently (don't follow)
hl.bind(
	"SUPER + SHIFT + ALT + code:10",
	hl.dsp.window.move({ workspace = 1, follow = false }),
	{ description = "Move silent to ws 1" }
)
hl.bind(
	"SUPER + SHIFT + ALT + code:11",
	hl.dsp.window.move({ workspace = 2, follow = false }),
	{ description = "Move silent to ws 2" }
)
hl.bind(
	"SUPER + SHIFT + ALT + code:12",
	hl.dsp.window.move({ workspace = 3, follow = false }),
	{ description = "Move silent to ws 3" }
)
hl.bind(
	"SUPER + SHIFT + ALT + code:13",
	hl.dsp.window.move({ workspace = 4, follow = false }),
	{ description = "Move silent to ws 4" }
)
hl.bind(
	"SUPER + SHIFT + ALT + code:14",
	hl.dsp.window.move({ workspace = 5, follow = false }),
	{ description = "Move silent to ws 5" }
)
hl.bind(
	"SUPER + SHIFT + ALT + code:15",
	hl.dsp.window.move({ workspace = 6, follow = false }),
	{ description = "Move silent to ws 6" }
)
hl.bind(
	"SUPER + SHIFT + ALT + code:16",
	hl.dsp.window.move({ workspace = 7, follow = false }),
	{ description = "Move silent to ws 7" }
)
hl.bind(
	"SUPER + SHIFT + ALT + code:17",
	hl.dsp.window.move({ workspace = 8, follow = false }),
	{ description = "Move silent to ws 8" }
)
hl.bind(
	"SUPER + SHIFT + ALT + code:18",
	hl.dsp.window.move({ workspace = 9, follow = false }),
	{ description = "Move silent to ws 9" }
)
hl.bind(
	"SUPER + SHIFT + ALT + code:19",
	hl.dsp.window.move({ workspace = 10, follow = false }),
	{ description = "Move silent to ws 10" }
)

-- Tab between workspaces
hl.bind("SUPER + TAB", hl.dsp.focus({ workspace = "e+1" }), { description = "Next workspace" })
hl.bind("SUPER + SHIFT + TAB", hl.dsp.focus({ workspace = "e-1" }), { description = "Previous workspace" })
hl.bind("SUPER + CTRL + TAB", hl.dsp.focus({ workspace = "previous" }), { description = "Previous workspace" })

-- Move workspace to monitor
hl.bind("SUPER + SHIFT + ALT + LEFT", function()
	local w = hl.get_active_workspace()
	if not w then
		return
	end
	hl.dispatch(hl.dsp.workspace.move({ workspace = w.id, monitor = "l" }))
end, { description = "Workspace to left" })
hl.bind("SUPER + SHIFT + ALT + RIGHT", function()
	local w = hl.get_active_workspace()
	if not w then
		return
	end
	hl.dispatch(hl.dsp.workspace.move({ workspace = w.id, monitor = "r" }))
end, { description = "Workspace to right" })
hl.bind("SUPER + SHIFT + ALT + UP", function()
	local w = hl.get_active_workspace()
	if not w then
		return
	end
	hl.dispatch(hl.dsp.workspace.move({ workspace = w.id, monitor = "u" }))
end, { description = "Workspace to up" })
hl.bind("SUPER + SHIFT + ALT + DOWN", function()
	local w = hl.get_active_workspace()
	if not w then
		return
	end
	hl.dispatch(hl.dsp.workspace.move({ workspace = w.id, monitor = "d" }))
end, { description = "Workspace to down" })

-- WINDOW RESIZING

-- Resize active window
hl.bind("SUPER + code:20", hl.dsp.window.resize({ x = -100, y = 0, relative = true }), { description = "Expand left" })
hl.bind("SUPER + code:21", hl.dsp.window.resize({ x = 100, y = 0, relative = true }), { description = "Shrink left" })
hl.bind(
	"SUPER + SHIFT + code:20",
	hl.dsp.window.resize({ x = 0, y = -100, relative = true }),
	{ description = "Shrink up" }
)
hl.bind(
	"SUPER + SHIFT + code:21",
	hl.dsp.window.resize({ x = 0, y = 100, relative = true }),
	{ description = "Expand down" }
)

-- Mouse control
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { description = "Move window" })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { description = "Resize window" })

-- Scroll workspaces
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { description = "Next workspace" })
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }), { description = "Previous workspace" })

--###############################################################################
-- WINDOW GROUPING
--###############################################################################

-- Toggle grouping
hl.bind("SUPER + G", hl.dsp.group.toggle(), { description = "Toggle grouping" })
hl.bind("SUPER + ALT + G", hl.dsp.window.move({ out_of_group = true }), { description = "Ungroup window" })

-- Join groups
hl.bind("SUPER + ALT + LEFT", hl.dsp.window.move({ into_group = "l" }), { description = "Group left" })
hl.bind("SUPER + ALT + RIGHT", hl.dsp.window.move({ into_group = "r" }), { description = "Group right" })
hl.bind("SUPER + ALT + UP", hl.dsp.window.move({ into_group = "u" }), { description = "Group up" })
hl.bind("SUPER + ALT + DOWN", hl.dsp.window.move({ into_group = "d" }), { description = "Group down" })

-- Navigate groups
hl.bind("SUPER + ALT + TAB", hl.dsp.group.next(), { description = "Next in group" })
hl.bind("SUPER + ALT + SHIFT + TAB", hl.dsp.group.prev(), { description = "Prev in group" })
hl.bind("SUPER + CTRL + LEFT", hl.dsp.group.prev(), { description = "Group focus left" })
hl.bind("SUPER + CTRL + RIGHT", hl.dsp.group.next(), { description = "Group focus right" })

-- Scroll groups
hl.bind("SUPER + ALT + mouse_down", hl.dsp.group.next(), { description = "Group next" })
hl.bind("SUPER + ALT + mouse_up", hl.dsp.group.prev(), { description = "Group prev" })

-- Group by number
hl.bind("SUPER + ALT + code:10", hl.dsp.group.active({ index = 1 }), { description = "Group window 1" })
hl.bind("SUPER + ALT + code:11", hl.dsp.group.active({ index = 2 }), { description = "Group window 2" })
hl.bind("SUPER + ALT + code:12", hl.dsp.group.active({ index = 3 }), { description = "Group window 3" })
hl.bind("SUPER + ALT + code:13", hl.dsp.group.active({ index = 4 }), { description = "Group window 4" })

-- focus between windows
hl.bind("SUPER + h", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + l", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + k", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + j", hl.dsp.focus({ direction = "down" }))
