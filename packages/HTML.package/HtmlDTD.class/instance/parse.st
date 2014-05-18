actions
parse

	| in s |
	
	self reset.
	in := ReadStream on: self content.

	[in atEnd] whileFalse:
	[
		in skipSeparators.
		in upTo: $<.
		s := in upTo: $ .
		(s beginsWith: '!--') 
		ifTrue: [self readComment: in]
		ifFalse:
		[
			(s beginsWith: '!ELEMENT') 
			ifTrue: [self readElement: in]
			ifFalse:
			[
				(s beginsWith: '!ATTLIST')
				ifTrue: [self readAttList: in]
				ifFalse:
				[
					(s beginsWith: '!ENTITY')
					ifTrue:[self readEntity: in]
					ifFalse:
					[
						(s beginsWith: '![')
						ifTrue:[self readConditionalElement: in]
						ifFalse:[s trimBoth size > 0 ifTrue: [self halt]]
					] 
				] 
			]
		]
	].

	self expandAllTokens.
	self objectifyAttLists.
	self objectifyElements.
	
	