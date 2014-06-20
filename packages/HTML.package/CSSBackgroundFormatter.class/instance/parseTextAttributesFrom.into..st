parsing
parseTextAttributesFrom: aCSSProperty into: aContext
	
	aCSSProperty propertyName = 'background'
		ifTrue: [ self readBackgroundAttribute: aCSSProperty propertyString of: aCSSProperty to: aContext ].
	aCSSProperty propertyName = 'background-image'
		ifTrue: [ self readBackgroundImageAttribute: aCSSProperty propertyString of: aCSSProperty to: aContext ].
	aCSSProperty propertyName  = 'background-color'
		ifTrue: [ self readBackgroundColorAttribute: aCSSProperty propertyString to: aContext ].
	aCSSProperty propertyName = 'background-repeat'
		ifTrue: [ self readBackgroundRepeatAttribute: aCSSProperty propertyString to: aContext ].
	aCSSProperty propertyName = 'background-position'
		ifTrue: [ self readBackgroundPositionAttribute: aCSSProperty propertyString to: aContext ]