accessing
rawContent

	| in |

	in := ReadStream on: self document content.
	in position: self start.
	(self isComment or: [self parent ifNotNil: [self parent isComment]])
		ifTrue: [^ (in next: (self end - self start))]
		ifFalse: [^ (in next: (self end - self start)) asUnHtml].