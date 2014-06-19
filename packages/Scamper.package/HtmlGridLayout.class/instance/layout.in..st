layout
layout: aMorph in: newBounds
	"Compute the layout for the given morph based on the new bounds
"
	|  origin x y w h |
	aMorph hasSubmorphs ifFalse: [^self].
	self colsAndRows.
	origin := newBounds origin asIntegerPoint.
	
	self layoutColumnsIn: newBounds.
	self layoutRowsIn: newBounds.

	aMorph submorphs do: [ :m |
		| p col row b startcol startrow ncols nrows |
		p := m valueOfProperty: #gridPosition.
		startcol := p col.
		ncols := p ncols.
		startrow := p row.
		nrows := p nrows.		
		col := cols at: startcol.
		row := rows at: startrow.
		x := col x.
		y := row y.
		w := 0.
		1 to: ncols do: [ :n | w := w + ((cols at: (startcol + n - 1)) width). ].
		h := 0.
		1 to: nrows do: [ :n | h := h + ((rows at: (startrow + n - 1)) height). ].
		b := (origin + (x@y)) corner: (origin + (x@y) + (w@h)).
		m layoutInBounds: b
	].
