as yet unclassified
isInline
	^ isInline ifNil: [ isInline := self children ifEmpty: [ true ]
										     ifNotEmpty: [ self children allSatisfy: [ :child | child isInline ]]]