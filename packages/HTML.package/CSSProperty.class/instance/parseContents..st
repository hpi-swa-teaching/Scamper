accessing
parseContents: aStream

	| s pos in |
	aStream skipSeparators.
	pos := aStream position.
	s := aStream upTo: $;.
	(s includes: $}) ifTrue: 
	[
		aStream position: pos. 
		s := aStream upTo: $}.  
		self addError: CSSUnterminatedPropertyError new.
	].
	in := ReadStream on: s.
	self propertyString: (in upTo: $!).
	self important: (in match: 'important').