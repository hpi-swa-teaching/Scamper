accessing
valueType

	valueType isNil 
		ifTrue: [valueType := (CSSPropertyDefinition named: self propertyName) valueType].
	^valueType