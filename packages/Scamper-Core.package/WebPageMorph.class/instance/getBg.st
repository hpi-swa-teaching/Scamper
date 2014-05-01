model access
getBg
	"Retrieve the current model background color/image"

	getBgSelector isNil ifTrue: [^Color white].
	^(model perform: getBgSelector) ifNil: [Color white]