-- Adds selected media items to folders named as YYYY-MM of the creation
-- date of the item itself. It does not remove the item from the current
-- album. That have to be done manually.

tell application "Photos"
	set selectedPictures to selection
	repeat with i from 1 to number of items in selectedPictures
		set thePicture to item i of selectedPictures
		set theDate to date of thePicture
		set theYear to year of theDate
		set theMonth to month of theDate
		set tmpname to (theYear * 100 + theMonth) as text
		set theAlbumname to text 1 thru 4 of tmpname & "-" & text 5 thru 6 of tmpname
		set theList to {}
		set the end of theList to thePicture
		try
			set theAlbum to album theAlbumname
		on error
			set theAlbum to (make new album named theAlbumname)
		end try
		add theList to theAlbum
	end repeat
end tell
