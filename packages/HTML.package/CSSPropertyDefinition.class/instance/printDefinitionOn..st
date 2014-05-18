printing
printDefinitionOn: aStream

	aStream nextPutAll: 'CSSPropertyDefinition new appliesTo: '. appliesTo printOn: aStream.
	aStream nextPutAll: ';'; cr;
	nextPutAll: 'propertyName: '. propertyName printOn: aStream.
	aStream nextPutAll: ';'; cr;
	nextPutAll: 'initialValue: '. initialValue printOn: aStream.
	aStream nextPutAll: ';'; cr;
	nextPutAll: 'media: '. media printOn: aStream.
	aStream nextPutAll: ';'; cr;
	nextPutAll: 'percentages: '. percentages printOn: aStream.
	aStream nextPutAll: ';'; cr;
	nextPutAll: 'valueString: '. valueString printOn: aStream.
	aStream nextPutAll: '.'; cr; cr.