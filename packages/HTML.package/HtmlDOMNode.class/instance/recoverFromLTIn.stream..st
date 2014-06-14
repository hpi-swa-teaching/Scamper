parsing
recoverFromLTIn: aString stream: in

	| s  |

	in skip: (aString size - (aString lastIndexOf: $<)) negated-1.

	((self children isEmpty not) and: [self children last isCDATA]) ifTrue:
	[
		self children last end: in position -1.
	]
	ifFalse: 
	[
		self addChild:
				(HtmlCDATANode start: self startForNextElement
								end: in position-1)		
	].
	s := in upTo: $>.
	^s