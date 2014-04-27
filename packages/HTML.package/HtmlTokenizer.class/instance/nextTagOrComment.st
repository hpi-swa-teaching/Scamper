private-tokenizing
nextTagOrComment
	"next character is a $<.  So read either a tag or a token"
	self nextChar.  "skip the $<"

	^self peekChar = $! 
		ifTrue: [ self nextComment ]
		ifFalse: [ self nextTag ]

