accessing
isValid

	^super isValid and:[units notNil or: [valueString asNumber = 0]]