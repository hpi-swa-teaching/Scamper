accessing
content
	"Answer the value of content"

	^ content isNil 
		ifFalse: [content]
		ifTrue: [content := self document content]
	