accessing
parseContents: aStream

	| str  child |

	str := aStream upTo: $>.
	
	[(str asLowercase endsWith: ('</',self tag)) or: [aStream atEnd]] 
		whileFalse: [str := (str, '>', (aStream upTo: $>))].

	self end: aStream position.
	self endTagMissing: (str asLowercase endsWith: ('</',self tag)) not.
	child := CSSStyleSheet start: self startForNextElement end: (aStream position - (self tag size + 3)).
	self addChild: child.
	aStream position: child start.
	child parseContents: aStream.
	aStream position: self end.
	
