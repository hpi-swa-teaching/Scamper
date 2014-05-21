formatting commands
parseTextAttributes: styles
	| styleContext |
	styleContext := Dictionary new.
	styles do: [:style | 
		style properties do: [:prop | self parseCSSProperty: prop into: styleContext ]].
	
	^ self getTextAttributesFrom: styleContext