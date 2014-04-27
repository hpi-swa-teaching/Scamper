other
drawImage: aForm 
	| aImage patternBox targetBox map |
	aImage := Form extent: self extent depth: Display depth.
	patternBox := aForm boundingBox.
	targetBox := aImage boundingBox.
	map := aForm colormapIfNeededFor: aImage.
	targetBox left to: targetBox right - 1 by: patternBox width do:
		[:x |
		targetBox top to: targetBox bottom - 1 by: patternBox height do:
			[:y | aImage copyBits: patternBox from: aForm at: x @ y colorMap: map ]].
	^aImage