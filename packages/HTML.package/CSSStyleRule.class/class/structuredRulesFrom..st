definitions
structuredRulesFrom: aString

	| current style dict | 

	dict := Dictionary new.

	aString linesDo: 
	[:ea |  
		(ea beginsWith: 'Syntax:') ifTrue: 
		[
			current := Dictionary new.
			style := (ea findTokens: ':') second trimBoth.
			dict at: style put: current.
		]
		ifFalse:
		[
			(ea beginsWith: 'Possible Values:') ifTrue: 
			[
				current at: 'possibleValues' 
					put: (ea last: (ea size - 'Possible Values:' size)) trimBoth.
			]
			ifFalse:
			[
				(ea beginsWith: 'Initial Value:') ifTrue:
				[
					current at: 'initialValue' 
						put: (ea last: (ea size - 'Initial Value:' size)) trimBoth.
				]
				ifFalse:
				[
					(ea beginsWith: 'Applies to:') ifTrue:
					[
						current at: 'appliesTo' 
							put: (ea last: (ea size - 'Applies to:' size)) trimBoth.
					]
					ifFalse:
					[
						(ea beginsWith: 'Inherited:') ifTrue: 
						[
							current at: 'inherited' 
								put: (ea last: (ea size - 'Inherited:' size)) trimBoth.
						]
					]
				]
			]
		]
	].
	^ dict
