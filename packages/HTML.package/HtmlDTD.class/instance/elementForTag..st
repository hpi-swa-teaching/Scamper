testing
elementForTag: aTag

	^elements detect:[:ea | ea tagMatches: aTag] ifNone:[nil]