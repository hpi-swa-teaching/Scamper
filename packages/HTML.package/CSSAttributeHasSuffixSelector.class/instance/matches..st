testing
matches: aNode

	| attr |

	attr := self privateAttributeKeyInNode: aNode.

	^attr isNil 
		ifTrue: [false]
		ifFalse: 
		[
			(aNode attributes at: attr) endsWith: self value unquoted
		]