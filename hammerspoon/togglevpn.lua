-----------------------------------------------
-- Connect to vpn with Viscosity
-----------------------------------------------

local applescript = import_script("togglevpn.applescript")
hs.hotkey.bind({"cmd", "shift"}, "E", function() hs.applescript(applescript) end)
