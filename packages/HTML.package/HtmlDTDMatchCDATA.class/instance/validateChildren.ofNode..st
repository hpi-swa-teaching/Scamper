matching
validateChildren: aStream ofNode: aNode

	^(aStream atEnd not and: [self allowsItem: aStream peek dtdTag]) 
		ifTrue: [aStream next. true] 
		ifFalse: [false]
