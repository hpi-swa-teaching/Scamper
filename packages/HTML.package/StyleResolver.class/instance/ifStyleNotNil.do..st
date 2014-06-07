as yet unclassified
ifStyleNotNil: attributeKey do: aBlock

	(self getStyle: attributeKey) ifNotNilDo: [ :attribValue | aBlock value: attribValue ]