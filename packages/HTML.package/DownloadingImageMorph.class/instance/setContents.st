as yet unclassified
setContents
	"set up our morphic contents"
	| imageMorph imageMap |
	self removeAllMorphs.

	image ifNil: [^self setNoImageContents].

	defaultExtent isNil
		ifTrue: [(imageMorph := ImageMorph new) image: image]
		ifFalse: [imageMorph := SketchMorph withForm: image].
	(imageMapName notNil
	and: [formatter notNil
	and: [(imageMap := formatter imageMapNamed: imageMapName) notNil]])
		ifTrue: [imageMap buildImageMapForImage: imageMorph andBrowser: formatter browser].

	imageMorph position: self position.
	self addMorph: imageMorph.
	defaultExtent isNil
		ifFalse: [imageMorph extent: defaultExtent].
	self extent ~= imageMorph extent
		ifTrue: [	self extent: imageMorph extent ]