-----------------------------------------------
-- Mute/unmute microphone
-----------------------------------------------

hyper:bind({}, "s", function()
  hs.osascript.applescriptFromFile("toggle_input_volume.applescript")
  hyper.triggered = true
end)
