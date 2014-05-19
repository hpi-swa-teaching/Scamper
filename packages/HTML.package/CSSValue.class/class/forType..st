as yet unclassified
forType: aType

	^self allSubclasses detect: [:ea | ea type = aType] ifNone: [nil].