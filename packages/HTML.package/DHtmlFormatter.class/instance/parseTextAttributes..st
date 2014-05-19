formatting commands
parseTextAttributes: styles
	| textAttributes |
	textAttributes := OrderedCollection new.
	
	styles do: [:style | 
		style properties do: [:prop | 
			| prefix |
			prefix := self getPrefixOf: prop propertyName.
			(self cssPrefixMap at: prefix ifAbsent: [nil])
				ifNotNilDo: [:formatter | textAttributes addAll: (formatter parseTextAttributesFrom: prop)]]].
		
	^ textAttributes