instance creation
on: aStringOrStream

	| seq in seps | 
	
	in := aStringOrStream isStream
		ifFalse: [ReadStream on: aStringOrStream] 
		ifTrue: [aStringOrStream].

	in skipSeparators.
	seq := OrderedCollection new.
	seps := #().
	(in peek = $() ifFalse: [self error: 'Groups start with $('].

	in next; skipSeparators.

	[in peek = $)] whileFalse:
	[
		in skipSeparators.
		seq add: (HtmlDTDMatchExpression on: in).
		in skipSeparators.
		('|&,' includes: in peek) ifTrue: [seps:= seps copyWith: in next. in skipSeparators]
			ifFalse: [in peek = $) ifFalse: [self error: 'Huh?']]
	].
	in next.
	
	^(seps isEmpty) ifTrue: [seq last]
		ifFalse: [(seps first = $|) ifTrue: [HtmlDTDMatchOR new expression: seq]
		ifFalse:[(seps first = $&) ifTrue: [HtmlDTDMatchAND new expression: seq]
			ifFalse:[(seps first = $,) ifTrue: [HtmlDTDMatchSequence new expression: seq]
				ifFalse:[self error: 'Invalid group separator']]]]
	