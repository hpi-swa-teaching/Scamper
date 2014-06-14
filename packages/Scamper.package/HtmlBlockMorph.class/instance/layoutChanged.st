layout
layoutChanged
	| delta submorphCorner |
	submorphCorner := self submorphs 
		ifEmpty: [ self defaultBounds corner ]
		ifNotEmpty: [ (self defaultBounds quickMerge: self submorphBounds) corner asIntegerPoint ].
	delta := submorphCorner - self bounds corner.
	(delta isZero)
		ifTrue: [ super layoutChanged ]
		ifFalse: [ self extent: submorphCorner - self position ]