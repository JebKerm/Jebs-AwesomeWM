local beautiful = require("beautiful")
vars={}

-- {{{ Variable definitions
--beautiful.init(gears.filesystem.get_themes_dir() .. "default/theme.lua")
beautiful.init("/home/fab/.config/awesome/theme.lua") -- Themes define colours, icons, font and wallpapers.

vars.terminal = "alacritty" -- This is used later as the default terminal and editor to run.
vars.editor = os.getenv("EDITOR") or "nano"
vars.editor_cmd = vars.terminal .. " -e " .. vars.editor

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
vars.modkey = "Mod4"
-- }}}
return vars
