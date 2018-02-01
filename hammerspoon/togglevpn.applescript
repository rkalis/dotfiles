tell application "Viscosity"
    if the state of the first connection is not "Disconnected" then
        disconnect the first connection
    else
        connect the first connection
    end if
end tell
