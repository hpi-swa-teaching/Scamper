parsing
parseTextAttributesFrom: aCSSProperty into: aContext
	
	aCSSProperty propertyName = 'background-image'
		ifTrue: [ self readBackgroundImageAttribute: aCSSProperty to: aContext ].
	aCSSProperty propertyName  = 'background-color'
		ifTrue: [ self readBackgroundColorAttribute: aCSSProperty to: aContext ].
	aCSSProperty propertyName = 'background-repeat'
		ifTrue: [ self readBackgroundRepeatAttribute: aCSSProperty to: aContext ]