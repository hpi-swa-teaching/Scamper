parsing
readBackgroundRepeatAttribute: aCSSProperty to: aContext
	| values |
	values := Dictionary newFrom: {
		'no-repeat' -> #noRepeat.
		'repeat-x' -> #repeatX.
		'repeat-y' -> #repeatY.
		'repeat' -> #repeat
	}.
	values at: aCSSProperty propertyString asLowercase
		ifPresent: [:value | aContext at: #backgroundRepeat put: value ]