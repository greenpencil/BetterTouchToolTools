
tell application "Spotify"
if player state is playing then
return (characters 1 thru 15 of ((get artist of current track) & " - " & (get name of current track)) as string) & "..."
else
return ""
end if
end tell
