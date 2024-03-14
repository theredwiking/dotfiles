local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

spacer = wibox.widget {
    shape = gears.shape.powerline,
    color = "#800000",
    forced_width = 15,
    widget = wibox.widget.separator
}

return spacer
