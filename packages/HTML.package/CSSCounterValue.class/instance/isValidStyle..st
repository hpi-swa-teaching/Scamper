accessing
isValidStyle: aString

	^(CSSPropertyDefinition named: 'list-style-type') valueType isValidValue: aString