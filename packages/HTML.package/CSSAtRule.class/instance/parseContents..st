parsing
parseContents: aStream

	| s |

	s := aStream upTo: $;.
	(s includes: ${) ifTrue: [aStream position: self start. aStream upTo: $}].
	self end: aStream position.
	