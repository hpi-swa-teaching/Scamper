accessing
valueString: aString

	| lc |

	lc := aString asLowercase.
	units := (self allowableUnits
			detect: [:ea | lc endsWith: ea] ifNone: [nil]).
	valueString := units notNil 
		ifTrue: [aString first: (aString size - units size)] 
		ifFalse: [aString].
