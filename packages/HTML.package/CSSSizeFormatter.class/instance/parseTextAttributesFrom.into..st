as yet unclassified
parseTextAttributesFrom: aCSSProperty into: aContext

	aCSSProperty propertyName = 'height'
		ifTrue: [ aContext at: #height put: aCSSProperty propertyString asInteger ].
	aCSSProperty propertyName = 'width'
		ifTrue: [ aContext at: #width put: aCSSProperty propertyString asInteger ]