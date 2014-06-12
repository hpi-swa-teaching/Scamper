accessing
attributes: anObject
	"Set the value of attributes"

	| cstr |
	
	attributes := Dictionary new.
	anObject keysAndValuesDo: 
		[ :eachKey :eachValue | attributes at: eachKey put: (eachValue ifNotNil: [:value | value asUnHtml] ifNil: [nil])].
	id := (attributes at: 'id' ifAbsent: [nil]).
	cstr := attributes at: 'class' ifAbsent: [nil].
	classes := cstr isNil ifTrue: [#()] ifFalse: [cstr findTokens: ' '].