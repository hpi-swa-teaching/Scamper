instance creation
forType: aCharacter

	^self subclasses detect: [:ea | ea type = aCharacter] 
		ifNone: [self error: ('Type not found ', (aCharacter asString))]
	