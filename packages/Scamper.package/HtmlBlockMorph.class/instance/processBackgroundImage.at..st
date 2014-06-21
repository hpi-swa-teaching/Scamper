drawing
processBackgroundImage: aUrl at: aPosition
	| absoluteUrl |
	aUrl ifNil: [ ^ self ].
	
	absoluteUrl := aUrl.
	(aUrl asString beginsWith: 'http') 
		ifFalse: [ absoluteUrl := aUrl asUrlRelativeTo: self node document url ].

	(self downloadBackgroundImageAsync: absoluteUrl)
		then: [ :document |
			| image |
			image := ImageReadWriter formFromStream: document contentStream binary.
			((self width < image width or: [ self height < image height ]) or: [ aPosition notNil ])
				ifTrue: [ self backgroundImage: (self clip: image withOrigin: aPosition) ]
				ifFalse: [ self backgroundImage: image ]].