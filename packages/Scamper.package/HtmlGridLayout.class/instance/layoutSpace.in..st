layout
layoutSpace: aSpaceCollection in: newBreadth
	|pos|
	
	pos := self computeSpacePositions: aSpaceCollection in: newBreadth.
	
	"If still space left, iterate until done or no more resizable columns"
	pos < newBreadth ifTrue: [ | n |
		[ n := (aSpaceCollection select: [ :ea | ea breadth < ea max ]) size.
		 (pos < newBreadth) and: [n > 0]] whileTrue: [ | bsup |
			bsup := ((newBreadth - pos ) / n) asInteger.
			bsup <= 0 ifTrue: [ bsup := 1 ].
			pos := 0.
			aSpaceCollection do: [ :ea | | b |
				b := ea breadth.
				((pos + b < newBreadth) and: [ b < ea max ]) ifTrue: [
					b := b + bsup.
					b > ea max ifTrue: [ b := ea max ].					
				].
				ea position: pos; breadth: b.
				pos := pos + b.
			].
		].
	].

