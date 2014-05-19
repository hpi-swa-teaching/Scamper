parsing
readAttributesFrom: aCSSProperty
	| fontAttribs |
	fontAttribs := Dictionary new.
	
	(self attributeMap at: aCSSProperty propertyName ifAbsent: [nil])
		ifNotNilDo: [	:process | process value: aCSSProperty value: fontAttribs ].
		
	^ fontAttribs