parsing
readShorthandAttributesFrom: aPropertyValue to: aContext

	| aPropertyCount |
	
	aPropertyCount := (aPropertyValue splitOn: ' ') size.

	(aPropertyCount = 1)
		ifTrue:  [ self readOneAttributeFrom: aPropertyValue to: aContext ].
	(aPropertyCount = 2)
		ifTrue:  [ self readTwoAttributesFrom: aPropertyValue to: aContext ].
	(aPropertyCount = 3)
		ifTrue:  [ self readThreeAttributesFrom: aPropertyValue to: aContext ].
	(aPropertyCount = 4)
		ifTrue:  [ self readFourAttributesFrom: aPropertyValue to: aContext ]