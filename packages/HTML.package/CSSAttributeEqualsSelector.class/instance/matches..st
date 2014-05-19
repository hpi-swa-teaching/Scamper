as yet unclassified
matches: aNode

	| attr |

	attr := self privateAttributeKeyInNode: aNode.

	^attr isNil 
		ifFalse: [(aNode attributes at: attr) unquoted = self value unquoted]
		ifTrue: [false]