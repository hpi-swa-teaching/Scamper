testing
isSearchWords: aString

	| asUrl |
	asUrl := aString asUrl.
	
	((self isUrl: aString) or: (self isInternBrowserUrl: aString)) ifTrue: [^false].
	('localhost:#*' match: aString) ifTrue: [^false].
	^ ('*.##*' match: aString) not 
	