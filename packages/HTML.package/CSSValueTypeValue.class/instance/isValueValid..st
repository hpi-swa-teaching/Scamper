testing
isValueValid: anObject

	^(self valueClass new valueString: anObject asString) isValid