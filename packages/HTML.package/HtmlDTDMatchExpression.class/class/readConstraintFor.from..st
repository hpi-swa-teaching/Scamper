instance creation
readConstraintFor: anExpn from: aStream

	| c |

	^('+*?' includes: aStream peek) ifFalse: [anExpn]
	ifTrue:
	[
		c := aStream next.

		c = $+ ifTrue:[HtmlDTDMatchOneOrMore new expression: anExpn] ifFalse: [
		c = $? ifTrue:[HtmlDTDMatchZeroOrOne new expression: anExpn] ifFalse: [
		c = $* ifTrue:[HtmlDTDMatchZeroOrMore new expression: anExpn]]]
	]	