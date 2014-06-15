parsing
mayContainTag: aTag

	^self isComment 
		ifTrue:[false] 
		ifFalse:[self dtd tag: self dtdTag canContainTag: aTag]