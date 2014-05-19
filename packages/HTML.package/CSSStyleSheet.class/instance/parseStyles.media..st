parsing
parseStyles: aStream media: anArray

	aStream skipSeparators.
	[aStream atEnd] whileFalse: 
	[
		aStream skipSeparators.
		aStream peek = $} ifTrue: [aStream next. ^self]. "End of media block"
		(aStream peek = $/ and: [aStream next. aStream peek = $*]) 
		ifTrue: 
		[
			| child |
			aStream back. 
			child := CSSComment new start: aStream position.
			self addChild: child.
			child parseContents: aStream.
		]
		ifFalse:
		[	
			(aStream peek = $@) 
			ifTrue: "Read the imports"
			[
				self parseAtRule: aStream media: anArray.
			]
			ifFalse:
			[
				aStream atEnd ifFalse:
				[
					| child |

					child := CSSStyleRule new start: aStream position; media: anArray.
					self addChild: child.
					child parseContents: aStream.
				]
			]
		]
	]