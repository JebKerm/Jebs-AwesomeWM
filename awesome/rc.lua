-- awesome_mode: api-level=4:screen=on
-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

require("util.errhandling") -- Manages errors on startup

require("awful.autofocus") -- When we close a window, the next one will be focused

local beautiful = require("beautiful")
beautiful.init("/home/fab/.config/awesome/theme.lua")

vars = require("util.usrvars") -- Exports user variables such as terminal and editor of preference
modkey = vars.modkey
terminal = vars.terminal

require("util.desktopdecor") -- Initializes tags and widgets. Makes a wibox that contains said widgets

require("keybinds") -- Pretty obvious isn't it
require("util.sloppyfocus") -- To enable sloppy focus

require("rules")
