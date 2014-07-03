layout
updateSubmorphWidth: aWidth
	self submorphs select: [ :morph | morph isHtmlBlockMorph ] thenDo: [ :morph |
		| position |
		position := morph valueOfProperty: #gridPosition.
		position ifNotNil: [ :pos | morph setWidth: (self layoutPolicy columns at: position column) breadth ]]