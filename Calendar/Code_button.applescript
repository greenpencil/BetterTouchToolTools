on theSplit(theString, theDelimiter)
	-- save delimiters to restore old settings
	set oldDelimiters to AppleScript's text item delimiters
	-- set delimiters to delimiter to be used
	set AppleScript's text item delimiters to theDelimiter
	-- create the array
	set theArray to every text item of theString
	-- restore the old setting
	set AppleScript's text item delimiters to oldDelimiters
	-- return the result
	return theArray
end theSplit

set theFilePath to POSIX file "/Users/katie/.btt/eventkit-service/status"

set theFilePath to theFilePath as string
set myevent to read file theFilePath


set myArray to my theSplit(myevent, " in ")

if (count of myArray) is less than 2 then
	return "No Events Today"
else
	return item 2 of myArray
	
end if
