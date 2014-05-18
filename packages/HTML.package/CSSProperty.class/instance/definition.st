accessing
definition

	definition isNil ifTrue: 
	[
		definition := CSSPropertyDefinition named: 
			self propertyName asLowercase trimBoth
	].
	^definition