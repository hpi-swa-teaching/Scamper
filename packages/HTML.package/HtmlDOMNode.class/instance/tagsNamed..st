accessing
tagsNamed: aName

	^self nodesSelect:[:ea | ea tag = aName]