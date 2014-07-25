matching
validateChildren: aStream ofNode: aNode

	^(aStream atEnd) 
		ifTrue: [true] 
		ifFalse:
		[
			aNode addError: (HtmlTagMustBeEmptyError new).
			false
		]
