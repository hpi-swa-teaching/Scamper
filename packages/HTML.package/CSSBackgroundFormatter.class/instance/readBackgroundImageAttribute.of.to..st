parsing
readBackgroundImageAttribute: propertyValue of: aCSSProperty to: aContext 
	(propertyValue beginsWith: 'url')
		ifTrue: [ 
			| openBracketPosition closingBracketPosition urlString url |
			openBracketPosition := propertyValue findString: '(' startingAt: 4.
			closingBracketPosition := propertyValue findLastOccurrenceOfString: ')' startingAt: openBracketPosition.
			
			urlString := (propertyValue copyFrom: openBracketPosition + 1 to: closingBracketPosition - 1) 
					trimBoth: [:char | char isSeparator or: [char = $"] or: [char = $']].
			url := urlString.
			aCSSProperty stylesheetDocument ifNotNil: [ :stylesheet | url := url asUrlRelativeTo: stylesheet url ].
			aContext at: #backgroundImage put: url ]