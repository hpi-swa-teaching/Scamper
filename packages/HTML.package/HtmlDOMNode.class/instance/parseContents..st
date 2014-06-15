parsing
parseContents: aStream

	"tagParent: parent contents: aString stream: aStream"

	| s |

	self isSelfContained ifTrue: [^self end: aStream position; endTagMissing: true].

	[self end isNil and:[aStream atEnd not]] whileTrue:
	[
		aStream skipSeparators.

		s := aStream upTo: $<.
		s size > 0 ifTrue: 
		[
			self addChild: (HtmlCDATANode start: self startForNextElement 
								end: (aStream atEnd ifFalse:[aStream position-1] ifTrue: [aStream position]))

		].

		s := aStream upTo: $>.	

		(s size > 0 and:[s first = $! or: [(s first = $?) & (s last = $?)]]) ifTrue: 
		[
			s first = $? ifTrue:
			[
				"blow off the processing directive"
				"aStream skip: (s size+2)negated. 
				self addChild: (HtmlDOMNode parseProcessingDirective: aStream)."
			]
			ifFalse:
			[
				| child |
				aStream skip: (s size+2)negated. 
				(self dtd isXML and: [s beginsWith: '<![CDATA[']) ifFalse:
				[
					child := (HtmlCommentNode new) start: aStream position.
				]
				ifTrue:
				[
					child := (HtmlXMLCDataNode new) start: aStream position.
				].
				self addChild: child.
				child parseContents: aStream.
			]
		]
		ifFalse: "It is a tag"
		[
			(s includes: $<) ifTrue: [s := self recoverFromLTIn: s stream: aStream]. 			
			(s trimBoth beginsWith: '/') ifTrue: 
			[
				| closeTag |
				closeTag := (s findTokens: ('/',Character separators)) first asLowercase.
				closeTag = self tag ifTrue: 
				[
					self end: aStream position; endTagMissing: false.
					^self
				]
				ifFalse:
				[
					(self hasAncestor: closeTag) ifTrue:
					[
						self addError: (HtmlTagMissingEndError new).
						aStream skip: (s size + 2) negated.
						^self end: (aStream position); endTagMissing: true.
					]
					ifFalse:
					[
						| child |
						child := (HtmlDOMNode newForTag: s) 
							start: (aStream position - (s size) - 2); end: (aStream position).
							self addChild: child.
							child addError: (HtmlTagMissingStartError new 
								position: (aStream position - (s size) - 1); 
								tag: s).
					]
				]
			]
			ifFalse: "Nested Tag Found"
			[
				"Does the new tag imply termination?"
				| short |
				short := (s findTokens: ('/',Character separators)).
				short := short size > 0 ifTrue: [short first] ifFalse: [short].
				"The above hack and aStream atEnd guards against input underflow"
				(aStream atEnd or:[((self mayContainTag: short) not 
					and: [self closeTagIsOptional])
					and:
					[
						| likelyParent |
						likelyParent := self detectAncestor:[:p | p mayContainTag: short]. 
						(likelyParent level > 0 and: [(self level - likelyParent level) < 3])
							or: [short = self tag] "siblings"
					]
				])
				ifTrue:
				"Fake a termination"
				[
					self end: (aStream atEnd ifFalse: [aStream position - s size - 2] ifTrue: [aStream position]); 
						endTagMissing: true.
					aStream atEnd ifFalse: [aStream skip: (s size + 2) negated].
					^self
				]
				ifFalse:
				[
					(short size > 0 and: [short first isLetter]) ifTrue:
					[
						| child |
						child := (HtmlDOMNode tagContents: s) start: (aStream position - s size - 2).
						self addChild: child.
						child parseContents: aStream.
					]
					ifFalse:
					[
						self addChild: (HtmlCDATANode start: self startForNextElement 
								end: aStream position)
					]
				]
			]
		]
	].
	(aStream atEnd and:[end isNil]) ifTrue: 
	[
		self end: aStream position.
		self endTagMissing: true.
	].
