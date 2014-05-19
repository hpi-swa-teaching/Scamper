accessing
content
	"Answer the value of content"

	^content isNil 
		ifTrue: [self document content] 
		ifFalse: [content]