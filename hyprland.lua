local active_border = "rgba(e32845d9)"
local inactive_border = "rgba(2b292ddd)"

require("default.hypr.glass")()

hl.config({
  general = {
    border_size = 1,
    col = {
      active_border = active_border,
      inactive_border = inactive_border,
    },
  },
  group = {
    col = {
      border_active = active_border,
      border_inactive = inactive_border,
    },
  },
  decoration = {
    rounding = 14,
    rounding_power = 3,
    active_opacity = 0.86,
    inactive_opacity = 0.80,
    fullscreen_opacity = 1.0,
    blur = { ignore_opacity = false },
  },
})

-- Leave the transparent margin around each glass panel sharp.
hl.layer_rule({
  match = {
    namespace = "^(omarchy-bar|omarchy-menu|omarchy-notifications|omarchy-osd|omarchy-polkit|omarchy-reminders|omarchy-clipboard|omarchy-emojis|omarchy-image-selector|omarchy-keyboard-panel|omarchy-network-qr|omarchy-dock|omarchy-dock-apps)$",
  },
  blur = true,
  blur_popups = true,
  ignore_alpha = 0.3,
})
