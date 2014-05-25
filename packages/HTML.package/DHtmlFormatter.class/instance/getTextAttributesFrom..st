private-formatting
getTextAttributesFrom: aDictionary
	| attribs |
	attribs := OrderedCollection new.
	(aDictionary at: #italic ifAbsent: [nil]) ifNotNil: [:italic | italic ifTrue: [ attribs add: TextEmphasis italic ]].
	(aDictionary at: #bold ifAbsent: [nil]) ifNotNil: [:bold | bold ifTrue: [ attribs add: TextEmphasis bold ]].
	(aDictionary at: #size ifAbsent: [nil]) ifNotNil: [:size | attribs add: (TextFontChange fontNumber: size)].
	(aDictionary at: #color ifAbsent: [nil]) ifNotNil: [:color | attribs add: (TextColor color: color)].
	^ attribs