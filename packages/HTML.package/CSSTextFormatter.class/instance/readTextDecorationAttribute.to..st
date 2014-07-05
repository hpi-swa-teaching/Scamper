parsing
readTextDecorationAttribute: aString to: aContext
	aString splitBy: ' ' do: [:attribute | 
		(attribute = 'underline') ifTrue: [aContext at: #underlined put: true].
		(attribute = 'line-through') ifTrue: [aContext at: #struckOut put: true]]