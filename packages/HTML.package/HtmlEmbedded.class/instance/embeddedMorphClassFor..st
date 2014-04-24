formatting
embeddedMorphClassFor: url
	| lastIndex extension className |
	lastIndex := url findLast:[:c| c = $.].
	lastIndex = 0 ifTrue:[^nil].
	extension := url copyFrom: lastIndex+1 to: url size.
	className := ExtensionList at: extension asLowercase ifAbsent:[^nil].
	^Smalltalk at: className ifAbsent:[nil]
	