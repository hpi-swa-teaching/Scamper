as yet unclassified
readBackgroundImageAttribute: aCSSProperty to: aContext 
	(aCSSProperty propertyString beginsWith: 'url')
		ifTrue: [ 
			| openBracketPosition closingBracketPosition urlString url |
			openBracketPosition := aCSSProperty propertyString findString: '(' startingAt: 4.
			closingBracketPosition := aCSSProperty propertyString findLastOccurrenceOfString: ')' startingAt: openBracketPosition.
			
			urlString := (aCSSProperty propertyString copyFrom: openBracketPosition + 1 to: closingBracketPosition - 1) 
					trimBoth: [:char | char isSeparator or: [char = $"] or: [char = $']].
			url := urlString.
			aCSSProperty stylesheetDocument ifNotNil: [ :stylesheet | url := url asUrlRelativeTo: stylesheet url ].
			aContext at: #backgroundImage put: url ]