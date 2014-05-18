as yet unclassified
readExpression: in

	| s |

	in skipSeparators.
	^in peek = $( ifTrue:
	[
		s := in upTo: $).
		(s,')',(in upTo: $ ))
	]
	ifFalse:
	[
		in upTo: $ .
	]