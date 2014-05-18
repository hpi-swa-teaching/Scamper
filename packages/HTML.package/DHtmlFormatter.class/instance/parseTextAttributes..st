formatting commands
parseTextAttributes: styles
	| fontAttribs |
	fontAttribs := self readFontAttributesFrom: styles.
	^ self getTextAttributesFrom: fontAttribs.