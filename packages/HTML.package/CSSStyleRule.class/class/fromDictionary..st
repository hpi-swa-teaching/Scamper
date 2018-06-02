definitions
fromDictionary: aStyleDictionary

	"only call when setting default styles for HtmlNodes"
	| rule |
	rule := CSSDefaultStyleRule new.
	aStyleDictionary keysAndValuesDo: 
		[:name :value | rule addProperty: ((CSSDefaultProperty propertyNamed: name) propertyString: value)].
	^ rule