require("tags.layouts")	-- add layout table
local awful = require("awful")
local names = require("tags.tagnames")
awful.tag(names, s, awful.layout.layouts[2])
