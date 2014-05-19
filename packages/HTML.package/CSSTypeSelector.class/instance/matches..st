accessing
matches: aNode

	aNode isCSS ifTrue: [^false].
	^(aNode dtd isXML 
		ifTrue:[element = aNode tag] 
		ifFalse: [element asLowercase = aNode tag]) and: [super matches: aNode]