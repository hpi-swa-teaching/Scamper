accessing
pseudoClassName
	"Answer the value of pseudoClassName"

	^ pseudoClassName isNil 
		ifFalse: [pseudoClassName] 
		ifTrue: 
		[
			| nm in out |
			nm := self class name asString.
			nm := nm last: (nm size - ('CSS' size)).
			nm := nm first: (nm size - ('Selector' size)).
			out := WriteStream on: (String new: nm size *2).
			in := ReadStream on: nm.
			out nextPut: in next asLowercase.
			[in atEnd] whileFalse:
			[
				in peek isUppercase 
					ifTrue: [out nextPut: $-. out nextPut: in next asLowercase]
					ifFalse:[out nextPut: in next].
			].
			out contents
		]