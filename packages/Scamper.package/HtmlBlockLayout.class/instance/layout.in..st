layout
layout: aMorph in: newBounds

	| currentY contentOrigin |
	aMorph hasSubmorphs ifFalse: [^self].
	
	contentOrigin := newBounds origin asIntegerPoint + aMorph layoutStyles contentOffset.
	currentY := 0.
	aMorph submorphs do: [ :morph |
		| morphBounds newTopLeft |
		newTopLeft := (contentOrigin + (0@currentY) + morph layoutStyles marginLeftTopAsPoint).
		morphBounds := newTopLeft corner: newBounds corner.
		morph layoutInBounds: morphBounds.
		currentY := currentY + morph height +morph layoutStyles extraMarginHeight].