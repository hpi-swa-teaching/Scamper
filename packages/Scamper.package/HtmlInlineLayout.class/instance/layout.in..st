as yet unclassified
layout: aMorph in: newBounds

	(self textAlign = #centered) ifTrue: [ aMorph centered ].
	(self textAlign = #left) ifTrue: [ aMorph leftFlush ].
	(self textAlign = #right) ifTrue: [ aMorph rightFlush ].