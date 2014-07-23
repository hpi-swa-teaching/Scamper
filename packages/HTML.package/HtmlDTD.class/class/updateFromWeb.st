accessing
updateFromWeb

	self compileSilently: ('dtd',(Character cr asString), '^',(self defaultUrl retrieveContents contents printString)) classified: 'resources'  