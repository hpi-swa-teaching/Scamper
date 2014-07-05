parsing
readTextAlignAttribute: aString to: aContext
	aString splitBy: ' ' do: [:attribute | 
		(attribute = 'center') ifTrue: [aContext at: #align put: #centered].
		((attribute = 'left') or: [attribute = 'start']) ifTrue: [aContext at: #align put: #leftFlush].
		((attribute = 'right') or: [attribute = 'end']) ifTrue: [aContext at: #align put: #rightFlush].
		(attribute = 'justify') ifTrue: [aContext at: #align put: #justified].]