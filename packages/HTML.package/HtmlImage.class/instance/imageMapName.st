attributes
imageMapName
	| imageMapName |
	(imageMapName := self getAttribute: 'usemap')
		ifNil: [^nil].
	imageMapName first = $#
		ifTrue: [imageMapName := imageMapName copyFrom: 2 to: imageMapName size].
	^imageMapName