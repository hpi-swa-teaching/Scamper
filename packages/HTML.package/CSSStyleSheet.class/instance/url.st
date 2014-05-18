accessing
url
	"Answer the value of url"

	^ url isNil ifTrue: [self document url] ifFalse: [url]