parsing
parseContents: aStream

	| c s allowBrackets |

	allowBrackets := false.
	aStream upTo: $!.
	s := aStream position.
	[aStream atEnd] whileFalse:
	[
		((c := aStream next) = $- and: [aStream peek = $-]) ifTrue:
		[
			aStream next.
			allowBrackets := allowBrackets not.			
		]
		ifFalse:
		[
			(c = $> and: [allowBrackets not]) ifTrue:
			[
				self end: aStream position.
				self addChild: (HtmlCDATANode start: s end: aStream position -1).
				^self
			]
			ifFalse:
			[
				(c = $- and: [aStream peek = $>]) ifTrue:
				[
					self addChild: (HtmlCDATANode start: s end: aStream position).
					aStream next.
					self end: aStream position.
					self endTagMissing: allowBrackets.
					^self
				]	
			]
		]
	].
	self endTagMissing: true.
	self end: aStream position.