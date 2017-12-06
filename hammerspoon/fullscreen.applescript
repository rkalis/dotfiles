tell application "System Events" to tell first application process whose frontmost is true
    set value of attribute "AXFullScreen" of window 1 to not value of attribute "AXFullScreen" of window 1
end tell
