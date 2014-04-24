attributes
getAttribute: name  default: anObject
	^self getAttribute: name  ifAbsent: [anObject]