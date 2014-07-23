matching
validateChildren: aStream ofNode: aNode

	^(aStream atEnd not and: [expression = aStream peek dtdTag]) 
		ifTrue: [aStream next. true] 
		ifFalse: [false]
