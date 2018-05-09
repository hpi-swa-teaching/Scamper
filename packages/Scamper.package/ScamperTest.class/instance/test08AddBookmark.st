initialize-release
test08AddBookmark
	| url |
	url := 'http://google.de'.
	(scamper model jumpToAbsoluteUrlAsync: url) wait.
	ActiveWorld doOneCycle.
	scamper model addToBookmark.
	self assert: 
		(scamper model bookmarks keys contains: [ :bm | 
			^ bm = 'Google'
		]).