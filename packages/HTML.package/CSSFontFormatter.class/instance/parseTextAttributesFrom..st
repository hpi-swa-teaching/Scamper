parsing
parseTextAttributesFrom: aCSSProperty
	| fontAttribs |
	fontAttribs := self readAttributesFrom: aCSSProperty.
	^ self getTextAttributesFrom: fontAttribs.