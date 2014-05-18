actions
readElement: aStream

	| s |

	s := aStream upTo: $>.
	self addToElements: (self stripCommentsFrom: s) trimBoth.