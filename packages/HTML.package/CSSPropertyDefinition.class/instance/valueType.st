accessing
valueType
	"Answer the value of valueType"

	valueType isNil ifTrue: [self valueType: (CSSValueType fromString: self valueString)].
	^valueType