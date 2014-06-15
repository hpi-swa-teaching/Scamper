resolution
ifStyleNotNil: attributeKey do: aBlock ifNil: anotherBlock

	(self getStyle: attributeKey) ifNil: [^anotherBlock value] ifNotNilDo: [ :attribValue | ^aBlock value: attribValue ]