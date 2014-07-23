accessing
isValid

	^super isValid and: [valueString asNumber >= 0]