font parameters
defaultStyle
	self installFontsIfNecessary.
	^(TextStyle named: 'Verdana') ifNil: [TextStyle default]