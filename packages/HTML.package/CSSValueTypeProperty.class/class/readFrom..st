instance creation
readFrom: in

	| s val | 
	in skipSeparators.
	in peek = $' ifFalse: [self error: 'CSSValueTypeProperty must begin with "''"'].
	in next.
	s := in upTo: $'.
	val := self new propertyName: s.
	(CSSValueTypeConstraint allTypes includes: in peek) ifTrue:
	[
		val := (CSSValueTypeConstraint readFrom: in) type: val.
	].
	^val