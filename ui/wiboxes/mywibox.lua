local awful = require("awful")
local wibox = require("wibox")
local makeWibox= function(s)
	-- Create the wibox
	mywibox = awful.wibar({ position = "top", screen = s })

	-- Add widgets to the wibox
	mywibox.widget = {
    	layout = wibox.layout.align.horizontal,
    	{ -- Left widgets
        	layout = wibox.layout.fixed.horizontal,
        	mylauncher,
        	s.mypromptbox,
    	},
    	s.mytaglist,-- Middle widgets would go here
    	{ -- Right widgets
        	layout = wibox.layout.fixed.horizontal,
		todo,
        	kblayout,
        	wibox.widget.systray(),
        	textclock,
        	s.mylayoutbox,
    	},
	}
	return mywibox
end
return makeWibox
