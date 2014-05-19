parsing
readFontAttribute: aString to: aDictionary
	| values |
	values := aString splitOn: ' '.
	(values includes: 'italic') ifTrue: [ aDictionary at: #italic put: true ].
	(values includes: 'normal') ifTrue: [ aDictionary at: #italic put: false ].
	
	(values includes: 'bold') ifTrue: [ aDictionary at: #bold put: true ]