accessing
privateAttributeKeyInNode: aNode

	^(aNode dtd isXML 
		ifTrue: 
		[
			(aNode attributes includesKey: self attribute) 
				ifFalse: [nil] 
				ifTrue:[self attribute]
		] 
		ifFalse: 
		[
			(aNode attributes includesKey: self attribute asLowercase) 
				ifFalse: [nil] 
				ifTrue:[self attribute]
		])
