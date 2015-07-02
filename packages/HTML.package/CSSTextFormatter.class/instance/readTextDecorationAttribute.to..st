parsing
readTextDecorationAttribute: aString to: aContext

	aString splitBy: ' ' do: [ :attribute | 
		(attribute = 'underline') 
			ifTrue: [ self put: true at: #underlined to: aContext ].
		(attribute = 'line-through') 
			ifTrue: [ self put: true at: #struckOut to: aContext ]
	]