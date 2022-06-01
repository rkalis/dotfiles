require "hyper"
require "caffeinate"
require "minimising"
require "spectacle"
require "shortcuts"

-----------------------------------------------
-- Reload config on write
-----------------------------------------------
local function reload_config()
  hs.reload()
end

hyper:bind({}, "r", function()
  reload_config()
  hyper.triggered = true
end)

hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")
