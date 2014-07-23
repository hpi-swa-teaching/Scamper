accessing
isValid

	| s |

	s := valueString asLowercase.

	(#(	'black' 
		'silver' 
		'gray' 
		'white' 
		'maroon' 
		'red' 
		'purple' 
		'fuchsia' 
		'green' 
		'lime' 
		'olive' 
		'yellow' 
		'navy' 
		'blue' 
		'teal' 
		'aqua') includes: s) ifTrue:[^true].

		((s beginsWith: 'rgb(') and: [s endsWith: ')']) ifTrue:
		[ 
			| rgb |
			rgb := (s findTokens: '(), ') copyWithoutFirst.
			(rgb size = 3 and:
			[
				((rgb first endsWith: '%') ifTrue: 
				[(rgb detect:
					[:ea | 
						((ea endsWith: '%') and: 
						[
							((ea first: (ea size-1)) asNumber >=0) 
								and: [(ea first:(ea size-1)) asNumber <=100]
						]) not
					] ifNone:[nil]) isNil ifTrue: [^true]
				]
				ifFalse:
				[
					(rgb detect:
					[:ea |
						(ea asNumber >= 0 and: [ea asNumber <= 255]) not
					] ifNone:[nil]) isNil ifTrue: [^true]
				])
			])
		].
		((s beginsWith: '#') and: 
			[(s size = 7 or: [s size = 4]) and: 
				[(s copyWithoutFirst detect:
					[:ea| ('0123456789abcdef' includes: ea) not] ifNone:[nil]) isNil]
			]) ifTrue: [^true].

	^false
	