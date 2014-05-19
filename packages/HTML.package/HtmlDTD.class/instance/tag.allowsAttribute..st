testing
tag: aTag allowsAttribute: anAttribute

	| a |
	a := (self attrListForTag: aTag).
	^a isNil 
		ifFalse: [(a attributeNamed: anAttribute) notNil] 
		ifTrue:[false]