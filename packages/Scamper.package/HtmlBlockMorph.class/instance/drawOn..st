drawing
drawOn: aCanvas
	| imageUrl fillStyle fillColor |
	
	
	fillColor := (StyleResolver for: self node) getStyle: #backgroundColor.
	fillColor ifNotNilDo: [ :whatever |
	fillStyle := SolidFillStyle color: fillColor.
	aCanvas fillRectangle: self bounds fillStyle: fillStyle borderStyle: self borderStyle.].
	
	
	self backgroundImage ifNotNil: [ :img | 
		fillStyle := BitmapFillStyle fromForm: img.
		aCanvas fillRectangle: self bounds fillStyle: fillStyle borderStyle: self borderStyle
	].
	
	self hasBackgroundImage ifNil: [
		self hasBackgroundImage: false.
		imageUrl := ((StyleResolver for: self node) getStyle: #backgroundImage).
		imageUrl ifNotNil: [ :url |
			self hasBackgroundImage: true.
			(url asString beginsWith: 'http') ifFalse: [
				url := url asUrlRelativeTo: self node document url ].
			(self downloadBackgroundImageAsync: url )
				then: [ :document |
					| image |
					image := ImageReadWriter formFromStream: document contentStream binary.
					self backgroundImage: image]]].
		
	^ super drawOn: aCanvas
	