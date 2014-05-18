parsing
parseContents: aStream

	"tagParent: parent contents: aString stream: aStream"

	| s docTypeFound hasXMLDirective |

	docTypeFound := false.
	hasXMLDirective := false.

	self start: aStream position.

	content := aStream contents.

	[aStream atEnd not] whileTrue:
	[
		| p |
		p := aStream position.
		
		"If we skip separatos, we will be neglecting spaces WTF?!
		aStream skipSeparators."
		
		s := aStream upTo: $<.
		s size > 0 ifTrue: 
		[
			| pos |
			pos := aStream atEnd ifTrue: [aStream position] ifFalse: [aStream position-1].
			self addChild: 
				(HtmlCDATANode start: p 
								end: (pos max: p))
		].
		s := aStream upTo: $>.	

		(s size > 0 and:[s first = $! or: [(s first = $?) & (s last = $?)]]) ifTrue: 
		[
			s first = $? ifTrue:
			[
				hasXMLDirective := true.
				self parseProcessingDirective: s
			]
			ifFalse:
			[
				(s asUppercase beginsWith: '!DOCTYPE') ifTrue:
				[
					self docType: s.
					docTypeFound := true.
				]
				ifFalse:
				[
					| child |
					aStream skip: (s size+2)negated. 
					child := (HtmlCommentNode new) start: aStream position.
					self addChild: child.
					child parseContents: aStream.
				]
			]
		]
		ifFalse: "It is a tag"
		[
			(docType isNil and: [hasXMLDirective]) ifTrue:
			[
				self docType: XHtml1Transitional docType.
			]
			ifFalse:
			[
				docType isNil ifTrue: [self docType: Html401Strict docType].
			].
			s := s trimBoth.
			(s size > 0) ifTrue:
			[
				(s first = $/) ifTrue: "stray close tag I think"
				[
					| child |
					child := (HtmlDOMNode newForTag: s) 
							start: (aStream position - (s size) - 2); end: (aStream position).
					self addChild: child.
					child addError: (HtmlTagMissingStartError new 
							position: (aStream position - (s size) - 1); 
							tag: s).
				]
				ifFalse: "Nested Tag Found"
				[
					| child |
					child := (HtmlDOMNode tagContents: s) start: (aStream position - s size - 2).
					self addChild: child.
					child parseContents: aStream.
				]
			]
		]
	].
	self end: aStream position.
	"self createImpliedNodes."
	self dtdIsImplied: docTypeFound not.
	docTypeFound ifFalse: 
	[
		self dtdIsImplied: true.
		self addError: HtmlMissingDocTypeError new
	].
	
