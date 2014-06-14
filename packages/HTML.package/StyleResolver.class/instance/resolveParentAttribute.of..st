private-resolution
resolveParentAttribute: attributeKey of: aDomNode
	^ aDomNode parent
			ifNil: [ nil ]
			ifNotNil: [ self getStyle: attributeKey for: aDomNode parent ]