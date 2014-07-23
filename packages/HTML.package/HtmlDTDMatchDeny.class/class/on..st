instance creation
on: anObject

	| in | 

	in := anObject isStream 
		ifTrue:[anObject] 
		ifFalse: [ReadStream on: anObject].

	in next = $- ifFalse: [self error: 'HtmlDTDMatchDeny called with invalid stream state'].

	^self new expression: (HtmlDTDMatchExpression on: in).