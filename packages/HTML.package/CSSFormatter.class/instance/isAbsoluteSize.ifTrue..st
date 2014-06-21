size-conversion
isAbsoluteSize: aString ifTrue: aBlock
	(self isAbsoluteSize: aString) ifTrue: [^aBlock value].
	^false.