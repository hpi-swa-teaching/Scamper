character entities
convertToNumber: aString
	"HtmlEntity convertToNumber: '25'"
	"HtmlEntity convertToNumber: 'xb7'"
	"HtmlEntity convertToNumber: 'o10'"
	| str ch |
	str := ReadStream on: aString asUppercase.
	ch := str peek.
	ch = $X ifTrue: [ str next. ^Number readFrom: str base: 16 ].
	ch = $O ifTrue: [ str next. ^Number readFrom: str base: 8 ].
	ch = $B ifTrue: [ str next. ^Number readFrom: str base: 2 ].
	^Number readFrom: str