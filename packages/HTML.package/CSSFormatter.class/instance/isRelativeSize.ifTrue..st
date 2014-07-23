size-conversion
isRelativeSize: aString ifTrue: aBlock
	(self isRelativeSize: aString) ifTrue: [^aBlock value].
	^false