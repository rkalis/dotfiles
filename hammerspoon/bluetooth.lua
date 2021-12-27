local bluetooth = require "hs._asm.undocumented.bluetooth"

hyper:bind({}, "b", function()
  local current_power = bluetooth.power()
  bluetooth.power(not current_power)
  hyper.triggered = true
end)

hyper:bind({"cmd"}, "b", function()
  bluetooth.power(true)
  local _, output = hs.osascript.applescriptFromFile("connect_headphones.applescript")
  hs.alert.show(output)
  hyper.triggered = true
end)
