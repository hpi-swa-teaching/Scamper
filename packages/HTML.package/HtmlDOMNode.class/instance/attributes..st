accessing
attributes: anObject
	"Set the value of attributes"

	| cstr |

	attributes := anObject.
	id := (attributes at: 'id' ifAbsent: [nil]).
	cstr := attributes at: 'class' ifAbsent: [nil].
	classes := cstr isNil ifTrue: [#()] ifFalse: [cstr findTokens: ' '].