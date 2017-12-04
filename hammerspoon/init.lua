require "asim"
require "hyper"
require "togglevpn"
require "spectacle"
require "shortcuts"

-----------------------------------------------
-- Reload config on write
-----------------------------------------------
function reload_config(files)
    hs.reload()
end

hyper:bind({}, "r", function()
  reload_config()
end)

hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")
