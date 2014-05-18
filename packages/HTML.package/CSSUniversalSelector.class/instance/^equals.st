comparing
= anObject

	^self class = anObject class and: [self selectors = anObject selectors and:[self element = anObject element]]