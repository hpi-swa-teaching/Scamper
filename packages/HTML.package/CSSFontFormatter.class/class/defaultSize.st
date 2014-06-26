class initialization
defaultSize
	self installFontsIfNecessary.
	^TextStyle pointsToPixels:
			(((TextStyle named: 'Verdana') ifNil: [TextStyle default]) defaultFont pointSize)