instance creation
readFrom: in

	| out val |

	out := WriteStream on: String new.
	in peek isAlphaNumeric 
		ifTrue: 
		[ 
			out nextPut: in next.
			[in atEnd not and:[in peek isAlphaNumeric or: ['_-' includes: in peek]]] 
			whileTrue: [out nextPut: in next].
		] 
		ifFalse: 
		[
			('/,' includes: in peek) ifTrue: [out nextPut: in next]. 
		].
	val := self new literal: out contents.
	(CSSValueTypeConstraint allTypes includes: in peek) ifTrue:
	[
		val := (CSSValueTypeConstraint readFrom: in) type: val.
	].
	^val