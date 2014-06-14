accessing
type
	^(self attributes at:'type' ifAbsent: ['text']) asLowercase