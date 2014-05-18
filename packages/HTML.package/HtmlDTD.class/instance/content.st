accessing
content
	"Answer the value of content"

	^ content isNil 
		ifFalse: [content]
		ifTrue: 
		[
			(self respondsTo: #dtd) 
				ifTrue: [content := self dtd]
				ifFalse: [content := self document content]
		]
	