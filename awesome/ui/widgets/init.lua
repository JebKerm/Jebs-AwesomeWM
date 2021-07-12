--First, make widgets that are common to all screens
kblayout = require("ui.widgets.common.kblayout")
myawesomemenu = require("ui.widgets.common.myawesomemenu")
mylauncher = require("ui.widgets.common.mylauncher")
textclock = require("ui.widgets.common.textclock")
todo = require("ui.widgets.common.todo")()

--Now make widgets that have to be created once per screen
mylayoutbox = require("ui.widgets.perScreen.mylayoutbox")
mypromptbox = require("ui.widgets.perScreen.mypromptbox")
mytaglist = require("ui.widgets.perScreen.mytaglist")
