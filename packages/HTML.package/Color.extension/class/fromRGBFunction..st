*HTML
fromRGBFunction: aString
	|r g b splitString|
	(aString beginsWith: 'rgb') ifTrue: 
	[splitString := aString splitBy: ','.
	r := (splitString first trimBoth asInteger clampLow: 0 high: 255) / 255.
	g := (splitString second trimBoth asInteger clampLow: 0 high: 255) / 255.
	b := (splitString third trimBoth asInteger clampLow: 0 high: 255) / 255. 
	^ Color r: r g: g b: b.].
	^nil
	