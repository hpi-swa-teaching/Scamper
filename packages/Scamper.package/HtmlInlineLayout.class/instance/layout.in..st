as yet unclassified
layout: aMorph in: newBounds

	(aMorph layoutStyles textAlign = #centered) ifTrue: [ aMorph centered ].
	(aMorph layoutStyles textAlign = #left) ifTrue: [ aMorph leftFlush ].
	(aMorph layoutStyles textAlign = #right) ifTrue: [ aMorph rightFlush ].