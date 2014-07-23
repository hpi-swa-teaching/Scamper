accessing
value

	^self isValid ifTrue: [valueString asNumber] ifFalse: [nil]