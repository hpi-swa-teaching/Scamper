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
	self layoutSpace: rows in: newBounds height..

	aMorph submorphs do: [ :m |
		| p column row b |
		p := m valueOfProperty: #gridPosition.
		p notNil ifTrue: [
			column := columns at: p column.
			row := rows at: p row.
			x := column position.
			y := row position.
			w := column breadth.
			h := row breadth.
			b := (origin + (x@y)) corner: (origin + (x@y) + (w@h)).
			m layoutInBounds: b
		]
	].
