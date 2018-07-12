parsing
put: aPropertyValue at: anAttribute to: aContext

	| aPrefixedAttribute |
	
	aPrefixedAttribute := self class attributePrefix, '-', anAttribute asSymbol.	
	self isAbsoluteSize: aPropertyValue ifTrue: [ super put: (self absoluteSizeToPx: aPropertyValue defaultSize: 0) at: aPrefixedAttribute to: aContext].
	self isRelativeSize: aPropertyValue ifTrue: [ super put: (self relativeSizeToPx: aPropertyValue parentAndDefaultSize:  self rootValueForEm) at: aPrefixedAttribute to: aContext].
	