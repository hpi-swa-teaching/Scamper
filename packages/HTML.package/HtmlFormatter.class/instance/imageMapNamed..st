image maps
imageMapNamed: imageMapName
	^imageMaps detect: [:im | im name asLowercase = imageMapName asLowercase] ifNone: []