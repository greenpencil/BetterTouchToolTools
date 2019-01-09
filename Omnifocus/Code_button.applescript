tell application "OmniFocus"
	tell the default document to tell the front document window
		
		set perspective name to "Due Soon"
		set theTasks to tree of content
		
		return length of theTasks
	end tell
end tell