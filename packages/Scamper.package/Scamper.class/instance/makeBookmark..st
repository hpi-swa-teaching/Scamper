user interface
makeBookmark: aDirectory
	| directories dir book extension extension1|
	extension := '*.lin'.
	extension1 := '*.url'. " for IE favorite files"
	book := Dictionary new.
	directories := aDirectory directoryNames.
	directories isEmpty
		ifFalse:[directories do:[:dn |
					dir := aDirectory directoryNamed: dn.
					book add: ( Association key: dn value: ( self makeBookmark: dir))
					]].
	aDirectory fileNames do:
	[:fn | (extension match: fn)
				ifTrue:[ book add: (Association key: (fn truncateTo: (fn size - 4))
							value: (self readUrlFromFile: (aDirectory fullNameFor: fn)))].
		  (extension1 match: fn)
				ifTrue:[ book add: (Association key: (fn truncateTo: (fn size - 4))
							value: ( self importUrl: (aDirectory fullNameFor: fn)))].
	].
	^book
	
		