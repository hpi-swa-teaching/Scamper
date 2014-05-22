formatting commands
startFont: aTextAttribList
	"aTextAttribList is a collection of TextAttributes"
	fontSpecs ifNil: [fontSpecs := OrderedCollection new].
	fontSpecs add:
		(aTextAttribList isArray 
			ifTrue: [ OrderedCollection newFrom: aTextAttribList ] 
			ifFalse: [ aTextAttribList ]).
	self setAttributes