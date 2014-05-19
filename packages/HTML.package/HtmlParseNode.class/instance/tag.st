accessing
tag
	"Answer the value of tag"

	^ tag isNil ifFalse: [tag asLowercase] ifTrue: [tag]