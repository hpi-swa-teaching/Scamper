parsing
readTextAlignAttribute: aString to: aContext

	aString splitBy: ' ' do: [ :attribute | 
		(attribute = 'center') 
			ifTrue: [ self put: #centered at: #align to: aContext ].
		((attribute = 'left') or: [attribute = 'start']) 
			ifTrue: [ self put: #leftFlush at: #align to: aContext ].
		((attribute = 'right') or: [attribute = 'end']) 
			ifTrue: [ self put: #rightFlush at: #align to: aContext ].
		(attribute = 'justify') 
			ifTrue: [ self put: #justified at: #align to: aContext ]
	]