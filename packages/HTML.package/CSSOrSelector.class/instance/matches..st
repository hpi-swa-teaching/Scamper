testing
matches: aNode

	^(selectors detect:[:ea | ea matches: aNode] ifNone:[nil]) notNil