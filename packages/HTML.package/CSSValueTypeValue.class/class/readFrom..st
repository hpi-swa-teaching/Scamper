instance creation
readFrom: in

	| str vt val |

	in peek = $< ifFalse: [self error: 'CSSValueType must begin with ''<'''].

	str := (in upTo: $>),'>'.
	vt := CSSValue forType: str.
	val := vt notNil 
		ifTrue: [self new valueClass: vt] 
		ifFalse: [self error: ('Unknown CSS value type ',str)].
	in skipSeparators.
	(CSSValueTypeConstraint allTypes includes: in peek) ifTrue:
	[
		val := (CSSValueTypeConstraint readFrom: in) type: val.
	].
	^val