rendering
setSvgContents
	"set up our svg contents"
	| svgMorph |
	self removeAllMorphs.

	image ifNil: [^self setNoImageContents].

	svgMorph := image.

	svgMorph position: self position.
	self addMorph: svgMorph.
	defaultExtent isNil
		ifFalse: [svgMorph extent: defaultExtent].
	self extent ~= svgMorph extent
		ifTrue: [	self extent: svgMorph extent ].
	"TODO: trigger scrollbar reevaluation of WebPageMorph"
	self owner composeToBounds