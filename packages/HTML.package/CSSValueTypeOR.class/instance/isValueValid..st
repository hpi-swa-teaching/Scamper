testing
isValueValid: anObject

	^(self types detect: [:ea | ea isValueValid: anObject] ifNone: [nil]) notNil