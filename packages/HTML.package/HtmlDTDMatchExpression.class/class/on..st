as yet unclassified
on: anObject

" 
( ... )
    Delimits a group.
A
    A must occur, one time only.
A+
    A must occur one or more times.
A?
    A must occur zero or one time.
A*
    A may occur zero or more times.
+(A)
    A may occur.
-(A)
    A must not occur.
A | B
    Either A or B must occur, but not both.
A , B
    Both A and B must occur, in that order.
A & B
    Both A and B must occur, in any order. "

	| in seq | 

	in := anObject isStream 
		ifTrue:[anObject] 
		ifFalse: [ReadStream on: anObject].

	seq := OrderedCollection new.	


	[in atEnd] whileFalse:
	[
		in skipSeparators.
		(in peek = $-) 
		ifTrue: [seq add:(HtmlDTDMatchDeny on: in)]
		ifFalse:
		[
			(in peek = $+) 
			ifTrue: [seq add:(HtmlDTDMatchAllow on: in)]
			ifFalse: 
			[
				(in peek = $( ) 
				ifTrue: 
				[
					seq add: 
					(self readConstraintFor:(HtmlDTDMatchGroup on: in) from: in)
				]
				ifFalse: 
				[
					('|),&' includes: in peek) ifTrue: [^seq last]
					ifFalse:
					[
						seq add: 
						(self readConstraintFor:(HtmlDTDMatchLiteral on: in) from: in)
					]
				]
			]	
		]
	].
	^seq size > 1 
		ifTrue:[self new expression: seq] 
		ifFalse:[seq last]
	
