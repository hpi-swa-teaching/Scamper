accessing
textConverterForContentType

	| index contentType |
	contentType := self contentType.
	contentType size < 8 ifTrue: [ ^nil ].
	index := contentType findString: 'charset=' startingAt: 1 caseSensitive: false.
	index = 0 ifTrue: [ ^nil ].
	^TextConverter newForEncoding: (contentType allButFirst: index + 7) "'charset=' size - 1"