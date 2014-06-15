drawing
drawOn: aCanvas
	| imageUrl resolver repeat |
	resolver := StyleResolver for: self node.
	
	(resolver getStyle: #backgroundColor)
		ifNotNilDo: [ :fillColor |
			self drawBackgroundColor: fillColor On: aCanvas ].
	
	self backgroundImage ifNotNil: [ :img |
		repeat := (resolver getStyle: #backgroundRepeat) ifNil: [ #repeat ].
		self drawBackground: img withRepeat: repeat On: aCanvas
	].
	
	self hasBackgroundImage ifNil: [
		self hasBackgroundImage: false.
		imageUrl := resolver getStyle: #backgroundImage.
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
	