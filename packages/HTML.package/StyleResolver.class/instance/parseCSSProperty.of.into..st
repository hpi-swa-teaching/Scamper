private-resolution
parseCSSProperty: aCSSProperty of: aDomNode into: aContext
	
	(self getFormatterFor: aCSSProperty)
		ifNotNilDo: [:formatter | 
			formatter parseTextAttributesFrom: aCSSProperty 
					    into: aContext 
					    withParentAttributeResolver: [:attr | self resolveParentAttribute: attr of: aDomNode ]]