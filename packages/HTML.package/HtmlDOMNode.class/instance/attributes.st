accessing
attributes
	"Answer the value of attributes"

	attributes ifNil: [attributes:=Dictionary new].
	attributes keysAndValuesDo: 
		[ :eachKey :eachValue | attributes at: eachKey put: eachValue asUnHtml].
	^ attributes