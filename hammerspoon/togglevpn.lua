-----------------------------------------------
-- Connect to vpn with Viscosity
-----------------------------------------------

local applescript = import_script("togglevpn.applescript")
hyper:bind({}, "e", function()
  hs.applescript(applescript)
end)
