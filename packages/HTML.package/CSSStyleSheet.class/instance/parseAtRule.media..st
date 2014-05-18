parsing
parseAtRule: aStream media: anArray

	| label child s |
	label := WriteStream on: String new.
	aStream peek = $@ 
	ifFalse:[self halt]
	ifTrue:
	[
		s := aStream position.
		aStream next.
		aStream skipSeparators.
		aStream peek isLetter 
			ifTrue: [label nextPut: aStream next]
			ifFalse: [self halt].
		[aStream peek isLetter or: [aStream peek isDigit or:['-_' includes: aStream peek]]] 
			whileTrue: [label nextPut: aStream next].

		label contents asLowercase = 'media' ifTrue:
		[
			| media array |

			media := aStream upTo: ${.
			array := (media findTokens: ', ') asArray.
			self parseStyles: aStream media: array.
		]
		ifFalse:
		[
			child := (CSSAtRule named: label contents) start: s; media: anArray.		
			self addChild: child.
			child parseContents: aStream.
		]
	]