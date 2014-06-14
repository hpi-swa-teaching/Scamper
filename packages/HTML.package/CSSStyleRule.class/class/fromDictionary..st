definitions
fromDictionary: aStyleDictionary
	| rule |
	rule := self new.
	aStyleDictionary keysAndValuesDo: 
		[:name :value | rule addProperty: ((CSSProperty propertyNamed: name) propertyString: value)].
	^ rule