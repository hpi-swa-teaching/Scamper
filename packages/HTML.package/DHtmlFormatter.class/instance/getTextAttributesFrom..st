private-formatting
getTextAttributesFrom: aDictionary
	| attribs |
	attribs := OrderedCollection new.
	aDictionary at: #family ifAbsentPut: ((TextStyle named: 'Verdana') ifNil: [TextStyle default]).
	aDictionary at: #family ifPresent: [:family | attribs add: (TextFontReference toFont: (family fontOfPointSize: (aDictionary at: #size ifAbsent: [12]))).].
	aDictionary at: #italic ifPresent: [:italic | italic ifTrue: [ attribs add: TextEmphasis italic ]].
	aDictionary at: #bold ifPresent: [:bold | bold ifTrue: [ attribs add: TextEmphasis bold ]].
	aDictionary at: #color ifPresent: [:color | attribs add: (TextColor color: color)].
	^ attribs