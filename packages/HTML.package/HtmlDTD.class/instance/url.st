accessing
url
	"Answer the value of url"

	^ url isNil ifTrue: [url := self defaultUrl]