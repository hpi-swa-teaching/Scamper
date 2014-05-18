testing
isValid

	^super isValid and: [(self selectors detect:[:ea | ea isValid not] ifNone: [nil]) isNil]