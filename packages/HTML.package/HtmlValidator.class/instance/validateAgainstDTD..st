actions
validateAgainstDTD: dtd

	self dom nodesDo:
	[:ea |
		(ea isComment or: [ea isCDATA or: [ea isDocument or: [ea isCSS]]]) ifFalse:
		[
			(dtd tagIsReal: ea dtdTag) 
			ifFalse: [ea addError: (HtmlTagUnknownError new)]	
			ifTrue:
			[
				dtd validateChildrenOfNode: ea.
			 	dtd validateAttributesOfNode: ea.
			]
		]
		ifTrue:
		[
			(ea isCDATA) ifTrue: [ea checkForUnescapedCharacters]
			ifFalse: 
			[
				(ea isComment) ifTrue: 
				[
					ea endTagMissing ifTrue: 
					[
						ea addError: HtmlUnclosedCommentError new
					]
				]
			]
		]
	]