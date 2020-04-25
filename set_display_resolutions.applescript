tell application "System Preferences"
	reveal anchor "displaysDisplayTab" of pane id "com.apple.preference.displays"
end tell

-- set resolution of MacBook Pro display
tell application "System Events" to tell process "System Preferences" to tell window "Built-in Retina Display"
	set isScaled to value of radio button "Scaled" of tab group 1
	if isScaled = 0 then
		click radio button "Scaled" of tab group 1
		click radio button 5 of radio group 1 of group 1 of tab group 1
	else
		set scaleValue to value of radio group 1 of group 1 of tab group 1
		if scaleValue is not equal to 5 then
			click radio button 5 of radio group 1 of group 1 of tab group 1
		end if
	end if
end tell

-- set resolution of first external display
tell application "System Events" to tell process "System Preferences" to tell window "U28E590 (1)"
	set isScaled to value of radio button "Scaled" of tab group 1
	if isScaled = 0 then
		click radio button "Scaled" of tab group 1
		click radio button 3 of radio group 1 of group 1 of tab group 1
	else
		set scaleValue to value of radio group 1 of group 1 of tab group 1
		if scaleValue is not equal to 3 then
			click radio button 3 of radio group 1 of group 1 of tab group 1
		end if
	end if
end tell

-- set resolution of seoncd external display
tell application "System Events" to tell process "System Preferences" to tell window "U28E590 (2)"
	set isScaled to value of radio button "Scaled" of tab group 1
	if isScaled = 0 then
		click radio button "Scaled" of tab group 1
		click radio button 3 of radio group 1 of group 1 of tab group 1
	else
		set scaleValue to value of radio group 1 of group 1 of tab group 1
		if scaleValue is not equal to 3 then
			click radio button 3 of radio group 1 of group 1 of tab group 1
		end if
	end if
end tell

quit application "System Preferences"