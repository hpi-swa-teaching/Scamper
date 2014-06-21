layout
computeSpacePositions: aSpaceCollection in: newBreadth

	|  pos |
	
	"Compute the new positions"
	pos := 0.
	aSpaceCollection do: [ :ea | | b |
		b := (newBreadth * (ea ratio)) asInteger.
		b < ea min ifTrue: [ b := ea min ].
		b > ea max ifTrue: [ b := ea max ].
		ea position: pos ; breadth: b.
		pos := pos + b.
	].
	^ pos