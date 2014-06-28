testing
matches: aNode

	| node |

	node := aNode.
	selectors reverseDo: [ :ea |
		node ifNil: [^false].
		(ea matches: node) ifFalse:[^false]. node := node parent
	].
	^true