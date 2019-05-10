activate application "SystemUIServer"
tell application "System Events"
    tell process "SystemUIServer"
        set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
        tell btMenu
            click
            try
                tell (menu item "Rosco's Headphones" of menu 1)
                    click
                    if exists menu item "Connect" of menu 1 then
                        click menu item "Connect" of menu 1
                        return "Connecting..."
                    else if exists menu item "Disconnect" of menu 1 then
                        click menu item "Disconnect" of menu 1
                        return "Disconnecting..."
                    end if
                end tell
            end try
        end tell
    end tell
    key code 53
    return "Device not found or Bluetooth turned off"
end tell


