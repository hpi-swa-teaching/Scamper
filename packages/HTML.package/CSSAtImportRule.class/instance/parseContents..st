as yet unclassified
parseContents: aStream

	| s m |

	urlValue := CSSUriValue readFrom: aStream.	
	aStream skipSeparators.
	s := aStream upTo: $;.
	self end: aStream position.
	m := s findTokens: ', '.
	m size > 0 ifTrue: [self media: m].	
