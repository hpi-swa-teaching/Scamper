layout
layout: aMorph in: newBounds
	"Compute the layout for the given morph based on the new bounds"
	|  origin x y w h |
	aMorph hasSubmorphs ifFalse: [^self].
	self
		recomputeRatios: columns;
		recomputeRatios: rows.
	origin := newBounds origin asIntegerPoint.
	
	self layoutSpace: columns in: newBounds width.
	self layoutSpace: rows in: newBounds height.

	aMorph submorphs do: [ :morph | | gridPosition |
		gridPosition := morph valueOfProperty: #gridPosition.
		gridPosition notNil ifTrue: [ | column morphBounds row |
			column := columns at: gridPosition column.
			row := rows at: gridPosition row.
			x := column position.
			y := row position.
			w := column breadth.
			h := row breadth.
			morphBounds := (origin + (x@y)) corner: (origin + (x@y) + (w@h)).
			morph layoutInBounds: morphBounds.
		]
	].
