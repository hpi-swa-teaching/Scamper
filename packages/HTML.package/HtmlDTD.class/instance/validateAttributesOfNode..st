actions
validateAttributesOfNode: aNode

	aNode attributes copy keysAndValuesDo:
	[:k :v || attList lck |
		attList := self attrListForTag: aNode dtdTag.
		lck := k asLowercase.
		(attList includesAttribute: lck) ifFalse:
		[
			aNode addError: (HtmlAttributeUnknownError new attribute: k).
		]
		ifTrue:
		[
			(k = lck) 
			ifFalse: 
			[
				aNode addError: (HtmlAttributeNotLowerCaseError new attribute: k).
				aNode attributes at: lck put: v.
				aNode attributes removeKey: k.
			].
			v isNil ifTrue:
			[
				(self isXML or: [((attList attributeNamed: lck) allowsValue: lck) not]) ifTrue:
				[
					aNode addError: (HtmlAttributeValueMissingError new attribute: k).
				]
			]
			ifFalse:
			[
				((attList attributeNamed: lck) allowsValue: v) ifFalse:
				[
					aNode addError: (HtmlAttributeValueNotValidError new attribute: k).
				]
			]
		]					
	]
