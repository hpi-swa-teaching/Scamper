accessing
addValues: aCollection fromStream: in

	| returnValue size |
	size := aCollection size.
	returnValue := self valueType addValues: aCollection fromStream: in.
	returnValue ifTrue:
	[
		| vals newSize |
		
		newSize := aCollection size.
		vals := aCollection last: newSize - size.
		[aCollection size > size ] whileTrue: [aCollection removeLast].
		aCollection add: 
			(((CSSProperty propertyNamed: self propertyName)
				isDerived: true) propertyValue: vals).
	].
	^returnValue