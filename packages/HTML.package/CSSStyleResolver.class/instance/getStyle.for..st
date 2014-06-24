resolution
getStyle: attributeKey for: aDomNode
	
	aDomNode computedStyles ifNil: [ self evaluateLocalStylesFor: aDomNode ].
	^ self resolveStyle: attributeKey for: aDomNode