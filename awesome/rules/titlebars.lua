local ruled = require("ruled")
-- Add titlebars to normal clients and dialogs
ruled.client.append_rule {
    id         = "titlebars",
    rule_any   = { type = { "normal", "dialog" } },
    properties = { titlebars_enabled = false      }
}    
