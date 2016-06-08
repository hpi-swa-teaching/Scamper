as yet unclassified
test08addBookmark

	self Scamper clearBookmark. 
	self Scamper currentUrl: 'http://www.google.de' asUrl.
	self Scamper addToBookmark.
	self assert: ( ('http://www.google.de' asUrl) == ((Scamper jumpToUrlAsync: ((Scamper bookmark) at: 1)))). 