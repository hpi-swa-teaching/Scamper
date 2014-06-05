layout
layoutChanged
	| delta submorphCorner |
	submorphCorner := (self defaultBounds quickMerge: self submorphBounds) corner asIntegerPoint.
	delta := submorphCorner - self bounds corner.
	(delta x ~= 0 or: [ delta y ~= 0])
		ifTrue: [ self extent: submorphCorner - self position ]
		ifFalse: [ super layoutChanged ]