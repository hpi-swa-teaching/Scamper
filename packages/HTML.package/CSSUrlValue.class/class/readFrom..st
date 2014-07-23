instance creation
readFrom: aStream

	| s pos |
	aStream skipSeparators.
	pos := aStream position.
	(aStream match: 'url(' ) ifTrue: [s := aStream upTo: $)]
	ifFalse:
	[
		aStream position: pos.
		aStream peek = $' ifTrue: [aStream next. s:= aStream upTo: $']
		ifFalse: 
		[
			aStream peek = $" ifTrue: [aStream next. s:= aStream upTo: $"]
			ifFalse:
			[
				^nil 
			]
		]
	].
	^self new valueString: s unquoted
	