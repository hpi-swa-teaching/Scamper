instance creation
fromDictionary: aStyleDictionary

	| rule |
	rule := self new.
	aStyleDictionary keysAndValuesDo: 
		[:name :value | rule addProperty: ((CSSDefaultProperty propertyNamed: name) propertyString: value)].
	^ rule