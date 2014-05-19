accessing
matches: aNode

	^(self selectors detect:[:ea | (ea matches: aNode) not] ifNone:[nil]) isNil