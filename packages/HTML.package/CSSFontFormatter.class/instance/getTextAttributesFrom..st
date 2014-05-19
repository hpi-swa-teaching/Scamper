parsing
getTextAttributesFrom: aDictionary
	| attribs |
	attribs := OrderedCollection new.
	(aDictionary at: #italic ifAbsent: [nil]) ifNotNil: [:italic | italic ifTrue: [ attribs add: TextEmphasis italic ]].
	(aDictionary at: #bold ifAbsent: [nil]) ifNotNil: [:bold | bold ifTrue: [ attribs add: TextEmphasis bold ]].
	^ attribs