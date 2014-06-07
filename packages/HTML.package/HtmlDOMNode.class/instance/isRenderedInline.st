accessing
isRenderedInline
	
	^ isRenderedInline ifNil: [ 
		| boxType |
		boxType := self boxType.
		boxType == #inlineBlock 
			ifTrue: [ isRenderedInline := true ]
			ifFalse: [
				isRenderedInline := self children ifEmpty: [ boxType == #inline ]
											        ifNotEmpty: [ boxType == #inline and: [ self children allSatisfy: [ :child | child isRenderedInline ]]]]]