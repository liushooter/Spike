set var_str to length of "Hello World"
set len to length of {"z", "q", "w", 1, 2, 3}

tell application "Finder"
	display dialog var_str + len
end tell
