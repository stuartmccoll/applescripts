-- Connect to Bluetooth devices
connect_bluetooth_devices({"Stuart’s AirPods", "Stuart’s Keyboard", "Stuart’s Mouse"})

-- Subroutine to connect to Bluetooth devices
-- @param bluetooth_devices : List(String) - the device names
on connect_bluetooth_devices(bluetooth_devices)
	activate application "SystemUIServer"
	tell application "System Events" to tell process "SystemUIServer"
		set bluetooth_menu_bar_item to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
		tell bluetooth_menu_bar_item
			repeat with bluetooth_device in bluetooth_devices
				click
				if exists menu item bluetooth_device of menu 1 then
					tell (menu item bluetooth_device of menu 1)
						click
						if exists menu item "Connect" of menu 1 then
							click menu item "Connect" of menu 1
						else
							-- Exit Bluetooth menu bar item
							key code 53
						end if
					end tell
				end if
			end repeat
			-- Exit Bluetooth menu bar item
			key code 53
		end tell
	end tell
end connect_bluetooth_devices