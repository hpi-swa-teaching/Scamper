parsing
readTextAlignAttribute: aString to: aContext

	aString splitBy: ' ' do: [ :attribute | 
		(attribute = 'center') 
			ifTrue: [ self put: #centered at: #textAlign to: aContext ].
		((attribute = 'left') or: [attribute = 'start']) 
			ifTrue: [ self put: #leftFlush at: #textAlign to: aContext ].
		((attribute = 'right') or: [attribute = 'end']) 
			ifTrue: [ self put: #rightFlush at: #textAlign to: aContext ].
		(attribute = 'justify') 
			ifTrue: [ self put: #justified at: #textAlign to: aContext ]
	]