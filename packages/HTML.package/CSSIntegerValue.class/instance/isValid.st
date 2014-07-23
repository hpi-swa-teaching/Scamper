accessing
isValid

	| str |

	str := ('+-' includes: valueString first)
		ifTrue: [valueString copyWithoutFirst]
		ifFalse:[valueString].

	^(str detect:[:ea | ea isDigit not] ifNone:[nil]) isNil