reading
readQuotedString
	"read a complete plist object assembly from the stream and return it"
	| out c |
	out := WriteStream on: String new.
	self skipWhitespace.
	stream peek = $"
		ifTrue: [stream next.
			[stream peek = $" & stream peek notNil]
				whileFalse: [c := stream next.
					c = $\
						ifTrue: [c := stream next.
							out
								nextPut: (ReadTranslations at: c)]
						ifFalse: [out nextPut: c]].
			stream next].
	^ out contents