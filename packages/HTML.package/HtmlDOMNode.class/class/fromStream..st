as yet unclassified
fromStream: aStream

	| s doctype html |

	doctype := nil.
	aStream skipSeparators.
	s := aStream upTo: $<.
	s := aStream upTo: $>.
	s size = 0 ifTrue: [aStream reset. ^nil].
	(s asUppercase beginsWith: '!DOCTYPE') ifTrue:
	[
		doctype := s.		
		s := aStream upTo: $<.
		s := aStream upTo: $>.
	].
	
	html := (self tagContents: s) start: (aStream position - s size - 2); parseContents: aStream.			
	^html docType: doctype.