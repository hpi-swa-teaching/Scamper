testing
attrListForTag: aTag

	^attLists detect:[:ea | ea tagMatches: aTag] ifNone:[nil]