drawing
drawOn: aCanvas
	| imageUrl resolver repeat |
	resolver := StyleResolver for: self node.
	
	resolver ifStyleNotNil: #backgroundColor do: 
		 [ :fillColor |	self drawBackgroundColor: fillColor On: aCanvas ].
	
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
					| image bgPosition |
					image := ImageReadWriter formFromStream: document contentStream binary.
					bgPosition := resolver getStyle: #backgroundPosition.
					((self width < image width or: [ self height < image height ]) or: [ bgPosition notNil ])
						ifTrue: [ 
							self backgroundImage: (self clip: image withOrigin: bgPosition) ]
						ifFalse: [ self backgroundImage: image ]]]].
		
	^ super drawOn: aCanvas