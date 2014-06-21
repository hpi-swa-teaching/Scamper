drawing
drawOn: aCanvas
	| resolver |
	resolver := StyleResolver for: self node.
	
	resolver ifStyleNotNil: #backgroundColor do: 
		 [ :fillColor |	self drawBackgroundColor: fillColor On: aCanvas ].
	
	self backgroundImage ifNotNil: [ :img |
		| repeat |
		repeat := (resolver getStyle: #backgroundRepeat) ifNil: [ #repeat ].
		self drawBackground: img withRepeat: repeat On: aCanvas ].
	
	self processedBackgroundImage ifFalse: [
		self processedBackgroundImage: true.
		self processBackgroundImage: (resolver getStyle: #backgroundImage)
			 at: (resolver getStyle: #backgroundPosition)].
		
	^ super drawOn: aCanvas