parsing
readBackgroundRepeatAttribute: propertyString to: aContext
	| values |
	values := Dictionary newFrom: {
		'no-repeat' -> #noRepeat.
		'repeat-x' -> #repeatX.
		'repeat-y' -> #repeatY.
		'repeat' -> #repeat
	}.
	values at: propertyString asLowercase
		ifPresent: [:value | aContext at: #backgroundRepeat put: value ]