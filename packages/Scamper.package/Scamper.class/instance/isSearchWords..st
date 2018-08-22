testing
isSearchWords: aString

	| asUrl |
	asUrl := aString asUrl.
	
	((self isUrl: aString) or: (self isInternBrowserUrl: aString)) ifTrue: [^false].
	
	(self isLocalhostAdress: aString) ifTrue: [^false].
	
	^ ('*.##*' match: aString) not 
	