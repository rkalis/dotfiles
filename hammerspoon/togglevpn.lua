-----------------------------------------------
-- Connect to vpn with Viscosity
-----------------------------------------------

hyper:bind({}, "e", function()
  hs.osascript.applescriptFromFile("togglevpn.applescript")
  hyper.triggered = true
end)
