actions
checkHtmlHeadBody

	| structure in tags pos tag patterns |

	structure := OrderedCollection new.
	patterns := #( "These are the only valid combinations"
				#( '<html' '<head' '</head' '<body' '</body' '</html')
				#( '<html' '<body' '</body' '</html')
				#( '<html' '<head' '</head' '</html')
				#( '<html' '</html')
				#( '<body' '</body')
				#( '<head' '</head' )
				#( )
			).
	tags := 	patterns first.

	in := ReadStream on: self content asLowercase.

	[in atEnd] whileFalse:
	[
		| min locs |
		pos := in position.

		locs := (tags collect: [:ea | in position: pos; upToAll: ea; position]). 	
		(locs reject:[:ea | locs first = ea])	isEmpty ifFalse:
		[
			min := locs min.
			tag := tags at: (locs indexOf: min).

			structure add: tag.
			in position: min.
			in atEnd ifFalse: [in skip: 1].
		]
		ifTrue: [in upToEnd].
	].
	structure := structure asArray.
	((patterns detect: [:ea | structure = ea] ifNone: [nil]) notNil) ifFalse:  
	[
		self dom addError: (HtmlHeadBodyNestingError new nesting: structure asArray). 
	]
	ifTrue:
	[
		(dom children size > 1 and: 
			[(dom children detect:[:ea | ea tag = 'html'] ifNone:[nil]) notNil]) ifTrue:
		[
			dom children do:
			[:ea | 
				(ea isComment or: [ea tag = 'html']) ifFalse: 
				[
					ea addError:(HtmlTagImproperlyNestedError new).
				]
			]
		]
	]
	