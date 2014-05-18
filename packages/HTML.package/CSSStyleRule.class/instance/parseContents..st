accessing
parseContents: aStream

	| pString in pos |
	aStream skipSeparators.
	self selector: (CSSSelector fromString: (aStream upTo: ${) trimBoth).
	
	pos := aStream position.
	pString := aStream upTo: $}.

	in := ReadStream on: pString.
	in skipSeparators.
	[in atEnd] whileFalse:
	[
		| property npos |
		in skipSeparators.
		npos := in position.
		(in peek = $/ and: [in next. in peek = $*]) ifTrue: "Don't keep comments in properties"
		[
			"| child |
			in back.
			child := (CSSComment new start: in position).
			self addProperty: child.
			child parseContents: in."
			in upToAll: '*/'.			
		]
		ifFalse:
		[
			property := (in upTo: $:) trimBoth.
			(property notNil and: [property size > 0])
			ifTrue:
			[
				| child |
				child := (CSSProperty propertyNamed: property) start: pos + npos.
				self addProperty: child.
				child parseContents: in.
				child end: pos + in position.
			]
		] 
	].
	self end: aStream position.