rendering
setContents
	"set up our morphic contents"
	| imageMorph |
	self removeAllMorphs.

	image ifNil: [^self setNoImageContents].

	defaultExtent isNil
		ifTrue: [(imageMorph := ImageMorph new) image: image]
		ifFalse: [imageMorph := SketchMorph withForm: image].

	imageMorph position: self position.
	self addMorph: imageMorph.
	defaultExtent isNil
		ifFalse: [imageMorph extent: defaultExtent].
	self extent ~= imageMorph extent
		ifTrue: [	self extent: imageMorph extent ]