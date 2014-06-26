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
		| p col row b startcol startrow ncols nrows |
		p := m valueOfProperty: #gridPosition.
		p notNil ifTrue: [
			startcol := p column.
			ncols := p ncolumns.
			startrow := p row.
			nrows := p nrows.		
			col := columns at: startcol.
			row := rows at: startrow.
			x := col position.
			y := row position.
			w := self partialBreadth: columns from: startcol to: startcol + ncols - 1.
			h := self partialBreadth: rows from: startrow to: startrow + nrows - 1.
			b := (origin + (x@y)) corner: (origin + (x@y) + (w@h)).
			m layoutInBounds: b
		]
	].
