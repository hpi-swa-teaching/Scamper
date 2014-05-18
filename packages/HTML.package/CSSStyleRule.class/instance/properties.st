accessing
properties
	"Answer the value of properties"

	^properties isNil ifTrue: [#()] ifFalse:[properties]
	