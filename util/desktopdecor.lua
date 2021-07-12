--create widgets that will later go into wiboxes
require("ui.widgets")

screen.connect_signal("request::desktop_decoration", function(s)
	--create initial tags and layouts
	require("tags")

	--create wiboxes for each screen
	s.mywibox = require("ui.wiboxes.mywibox")(s)
end)
