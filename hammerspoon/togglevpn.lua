-----------------------------------------------
-- Connect to vpn with Viscosity
-----------------------------------------------

function import_script(file)
    local f = io.open(file, "rb")
    local content = f:read("*all")
    f:close()
    return content
end

local applescript = import_script("togglevpn.applescript")
hs.hotkey.bind({"cmd", "shift"}, "E", function() hs.applescript(applescript) end)
