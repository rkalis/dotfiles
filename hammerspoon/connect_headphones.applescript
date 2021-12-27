-- Source: https://www.reddit.com/r/MacOS/comments/i4czgu/big_sur_airpods_script/gck3gz3
-- Works on macOS 11 Big Sur

use framework "IOBluetooth"
use scripting additions

set DeviceName to "Rosco's AirPods Max"

on getFirstMatchingDevice(DeviceName)
	repeat with device in (current application's IOBluetoothDevice's pairedDevices() as list)
		if (device's nameOrAddress as string) contains DeviceName then return device
	end repeat
end getFirstMatchingDevice

on toggleDevice(device)
	if not (device's isConnected as boolean) then
		device's openConnection()
		return "Connecting " & (device's nameOrAddress as string)
	else
		device's closeConnection()
		return "Disconnecting " & (device's nameOrAddress as string)
	end if
end toggleDevice

return toggleDevice(getFirstMatchingDevice(DeviceName))
