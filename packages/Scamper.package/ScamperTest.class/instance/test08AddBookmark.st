initialize-release
test08AddBookmark
	| url |
      [url := 'http://google.de'.
	(scamper model jumpToAbsoluteUrlAsync: url) wait.
	1 second asDelay wait. "wait for one world cycle"
	scamper model addToBookmark.
	self assert: 
		(scamper model bookmarks keys contains: [ :bm | 
			bm = 'Google'
		])] on: Error do: [:e | Transcript showln: e]