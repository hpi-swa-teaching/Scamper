testing
matches: aNode

	| node |

	node := aNode.
	selectors reverseDo:[:ea | (ea matches: node) ifFalse:[^false]. node := node parent].
	^true