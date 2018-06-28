as yet unclassified
layout: aMorph in: newBounds

	| origin maxX maxY currentY |
	
	aMorph hasSubmorphs ifFalse: [^self].
	
	origin := (newBounds origin asIntegerPoint) + ((aMorph layoutStyles paddingLeft)@(aMorph layoutStyles paddingTop)).
	maxX := newBounds width - (aMorph layoutStyles paddingRight).
	maxY := newBounds height - (aMorph layoutStyles paddingBottom).
	currentY := 0.
	aMorph submorphs do: [ :morph |
		| morphBounds w h |
		w := morph width.
		h := morph height.
		morphBounds := (origin + (0@currentY) corner: (origin + (0@currentY) + (w@h))).
		morph layoutInBounds: morphBounds.
		currentY := currentY + h ].
	aMorph minHeight: currentY + aMorph layoutStyles extraHeight.

	
	"| x y origin noneFloating leftFloating rightFloating maxY |
	
	aMorph hasSubmorphs ifFalse: [^self].
	y := 0.
	x := 0.
	maxY := 0.
	origin := newBounds origin asIntegerPoint + ((self padding)@(self padding)).
	noneFloating := OrderedCollection new.
	leftFloating := OrderedCollection new.
	rightFloating := OrderedCollection new.
	aMorph submorphs do: [ :morph |
		| direction |
		direction := morph layoutPolicy float.
		(direction = #left) ifTrue: [ leftFloating addLast: morph ].
		(direction = #right) ifTrue: [ rightFloating addLast: morph ].
		(direction = #none) ifTrue: [ noneFloating addLast: morph ].
	].
	leftFloating do: [ :morph | 
		| w h topLeft morphBounds |
		w := morph width.
		h := morph height.
		topLeft := (origin + (x@y)).
		((topLeft x) + w) > (newBounds width) ifTrue: [
			y := y + maxY.
			maxY := x := 0.
			topLeft := (origin + (x@y)).
			].
		morphBounds := (topLeft corner: (topLeft + (w@h))).
		x := x + w.
		h > maxY ifTrue: [maxY := h]
	].

	rightFloating do: [ :morph | 
		| w h topRight morphBounds |
		w := morph width.
		h := morph height.
		topRight := (origin + ((newBounds width)@0) - (x@y)).
		((topRight x) - w) < (origin x) ifTrue: [
			y := y + maxY.
			maxY := x := 0.
			topRight := (origin + ((newBounds width)@0) - (x@y)).
			].
		morphBounds := ((topRight - (w@h)) corner: topRight).
		x := x - w.
		h > maxY ifTrue: [maxY := h]
	].

	noneFloating do: [ :morph |
		| morphBounds w h |
		w := morph width.
		h := morph height.
		morphBounds := (origin + (0@y) corner: (origin + (0@y) + (w@h))).
		morph layoutInBounds: morphBounds.
		y := y + h.
	]"