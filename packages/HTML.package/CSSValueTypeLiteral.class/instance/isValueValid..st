testing
isValueValid: anObject

	^anObject isString and: [self literal = anObject]