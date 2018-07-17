parsing
put: aPropertyValue at: anAttribute to: aContext

	| aPrefixedAttribute valueInPixel |
	
	aPrefixedAttribute := self class attributePrefix, '-', anAttribute asSymbol.	
	self isAbsoluteSize: aPropertyValue ifTrue: [
		valueInPixel := self absoluteSizeToPx: aPropertyValue defaultSize: 0.
		super put: valueInPixel at: aPrefixedAttribute to: aContext].
	self isRelativeSize: aPropertyValue ifTrue: [
		valueInPixel := self relativeSizeToPx: aPropertyValue parentAndDefaultSize: self rootValueForEm.
		super put: valueInPixel at: aPrefixedAttribute to: aContext].
	
