rendering
renderDocument: aHtmlDocument
	self clear.
	self document: aHtmlDocument.
	self render.
	self allMorphsDo: [ :morph | morph bounds: morph fullBounds ].
	self bounds: self fullBounds