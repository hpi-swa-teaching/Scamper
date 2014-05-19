instance creation
named: aString

	| out cls |

	out := WriteStream on: String new.
	out nextPutAll: 'CSSAt'.
	out nextPut: aString first asUppercase.
	out nextPutAll: (aString last: aString size -1).
	out nextPutAll: 'Rule'.

	cls := Smalltalk at: out contents asSymbol ifAbsent:[nil].

	^cls new.