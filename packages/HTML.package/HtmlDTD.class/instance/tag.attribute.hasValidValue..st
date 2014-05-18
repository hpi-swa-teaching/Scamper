testing
tag: aTag attribute: anAttribute hasValidValue: aValue

	| a adef |
	a := (self attrListForTag: aTag).
	^a isNil 
		ifTrue:[false]
		ifFalse: 
		[
			adef := a attributeNamed: anAttribute.
			adef isNil 
				ifTrue:[false]
				ifFalse:
				[
					adef type isString 
						ifTrue: [true]
						ifFalse: [adef type allowsItem: aValue]
				]
		] 
