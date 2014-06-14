private-resolution
resolveStyle: attributeKey for: aDomNode
	| parentStyle |
	(aDomNode computedStyles includesKey: attributeKey)
		ifTrue: [ ^ aDomNode computedStyles at: attributeKey ].

	(self class inheritableAttributes includes: attributeKey) ifFalse: [ ^ nil ].
	aDomNode parent ifNil: [ ^ nil ].

	parentStyle := self getStyle: attributeKey for: aDomNode parent.
	aDomNode computedStyles at: attributeKey put: parentStyle.
	^ parentStyle