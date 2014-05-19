testing
matches: aNode

	| predecessors sels |

	(selectors last matches: aNode) ifTrue:
	[
		predecessors := aNode parent children.
		predecessors := predecessors first: (predecessors indexOf: aNode)-1.
		sels := selectors first: (selectors size -1).

		[predecessors isEmpty not] whileTrue:
		[
			(sels last matches: (predecessors last)) ifTrue:
			[
				sels size = 1 ifTrue: [^true] ifFalse: [sels := sels first: (sels size -1)]
			].
			predecessors := predecessors first: (predecessors size-1).
		]		
	].
	^false