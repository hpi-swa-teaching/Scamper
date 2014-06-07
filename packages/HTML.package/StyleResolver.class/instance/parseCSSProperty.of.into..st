private-resolution
parseCSSProperty: aCSSProperty of: aDomNode into: aContext
	
	| resolveParentAttr |
	resolveParentAttr := [:attr | 
		aDomNode parent
			ifNil: [ nil ]
			ifNotNil: [ self getStyle: attr for: aDomNode parent ]].
	(self getFormatterFor: aCSSProperty)
		ifNotNilDo: [:formatter | formatter parseTextAttributesFrom: aCSSProperty 
										   into: aContext 
										   withParentAttributeResolver: resolveParentAttr ]