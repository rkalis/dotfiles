hyper:bind({}, "m", function()
  hs.window.frontmostWindow():minimize()
  hyper.triggered = true
end)

hyper:bind({"alt"}, "m", function()
  local wins = hs.window.allWindows()
  for _, win in ipairs(wins) do
    if win:isMinimized() then
    win:unminimize()
    break
    end
  end
  hyper.triggered = true
end)
