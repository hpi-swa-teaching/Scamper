as yet unclassified
test08addBookmark

	scamper model clearBookmark. 
	
	(scamper model jumpToUrlAsync: ('http://www.google.de' asUrl)) wait.
	scamper owner runStepMethods.
	scamper model addToBookmark.
	
	self assert: 'http://www.google.de/' equals: ((scamper model bookmarks associationAt: 'Google') value asString). 