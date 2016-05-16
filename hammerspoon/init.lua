require "connectvpn"

-----------------------------------------------
-- Reload config on write
-----------------------------------------------
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" or file:sub(-12) == ".applescript" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/dotfiles/hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")
