accessing
valueIsValid

	"self propertyName = 'font-family' ifTrue: [self halt]."
	^self definition isNil ifTrue: [false]
	ifFalse: 
	[
		propertyValue isNil ifTrue:
		[
			| list in |
			in := ReadStream on: self propertyString.
			list := OrderedCollection new.
			((self definition valueType addValues: list fromStream: in) and: 
				[in skipSeparators atEnd]) 
			ifTrue: 
			[
				self propertyValue: list.
				list do: [:ea | (ea isString not and: [ea isProperty]) ifTrue: [self parent addProperty: (ea start: self start; end: self end)]]. 
				true
			]
			ifFalse: [false]
		]
		ifFalse: [true]
	].
	