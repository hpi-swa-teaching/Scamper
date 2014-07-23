reading
readString
	"read a complete plist object assembly from the stream and return it"

	| out c |

	out := WriteStream on: String new.

	self skipWhitespace.
	[c := stream peek.
		c isAlphaNumeric | ('-_.' includes: c)] whileTrue: [ out nextPut: stream next ].
		
	^out contents