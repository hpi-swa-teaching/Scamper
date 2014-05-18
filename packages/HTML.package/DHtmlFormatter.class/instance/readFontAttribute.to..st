formatting commands
readFontAttribute: aString to: aDictionary
	(aString beginsWith: 'italic') ifTrue: [ aDictionary at: #italic put: true ].
	(aString beginsWith: 'normal') ifTrue: [ aDictionary at: #italic put: false ].
	
	(aString beginsWith: 'bold') ifTrue: [ aDictionary at: #bold put: true ]