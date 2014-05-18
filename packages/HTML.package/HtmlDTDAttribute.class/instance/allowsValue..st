accessing
allowsValue: aValue
	
	self type isNil ifTrue:[^true].
	^self type isEnumeration
			ifFalse: [true]
			ifTrue: [self type allowsItem: aValue]