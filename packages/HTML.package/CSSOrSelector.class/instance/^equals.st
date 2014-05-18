comparing
= anObject

	^self class = anObject class and: [self selectors asSet = anObject selectors asSet]