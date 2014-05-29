*HTML
fromRGBPercentageFunction: aString
	|r g b splitString|
	('*%*' match:  aString) ifTrue: 
	[splitString := aString splitBy: ','.
	r := (splitString first trimBoth asInteger clampLow: 0 high: 100) / 100.
	g := (splitString second trimBoth asInteger clampLow: 0 high: 100) / 100.
	b := (splitString third trimBoth asInteger clampLow: 0 high: 100) / 100.
	^ Color r: r g: g b: b.].
	^nil
	