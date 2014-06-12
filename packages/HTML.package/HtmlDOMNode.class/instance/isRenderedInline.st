accessing
isRenderedInline
	
	| boxType |
	isRenderedInline ifNotNil: [ :value | ^ value ].
	
	boxType := self boxType.
	boxType == #inlineBlock
		ifTrue: [ ^ isRenderedInline := true ].

	boxType == #inline
		ifFalse: [ ^ isRenderedInline := false ].
	
	self children
		ifEmpty: [ ^ isRenderedInline := true ]
		ifNotEmpty: [ ^ isRenderedInline := self children allSatisfy: [ :child | child isRenderedInline ]]