accessing
dom
	"Answer the value of dom"

	dom isNil ifTrue: [self parse].
	^ dom